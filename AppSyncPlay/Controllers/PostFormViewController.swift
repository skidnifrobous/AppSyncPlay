//
//  PostFormViewController.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 25/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import UIKit
import AWSAppSync
import AVFoundation
import CoreServices

class PostFormViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var toField: UITextField!
    @IBOutlet weak var classroomIdField: UITextField!
    @IBOutlet weak var userIdField: UITextField!
    @IBOutlet weak var messageTypeField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var preview: UIImageView!
    @IBOutlet weak var mediaButton: UIButton!
    
    var post : FetchPostsQuery.Data.FetchPost.Item?
    
    let toOptions = ["Escola","Turma","Usuário"]
    var toSelected = 0
    
    let typeOptions = ["Normal", "Geral", "Urgente"]
    var typeSelected = 0
    
    let sId = AppConfig.shared.schoolId
    let cId = AppConfig.shared.classroomId
    let uId = AppConfig.shared.userId
    
    var mediaURL: URL?
    var mediaType = 1
    
    var generatedKey : String {
        let df = DateFormatter()
        df.dateFormat = "yyyyMMddHHmmss"
        let key = df.string(from: Date())
        let ext = mediaType == 1 ? ".jpg" : ".mp4"
        return "S\(sId)K\(cId)I\(uId)D\(key)\(ext)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        setupPost()
    }
    
    func setupView() {
        self.title = "Novo Aviso"
        
        toField.addCustomToolBar()
        classroomIdField.addCustomToolBar()
        userIdField.addCustomToolBar()
        messageTypeField.addCustomToolBar()
        messageField.addCustomToolBar()
        
        toField.inputView = UIPickerView(tag: 1, dataSource: self, delegate: self)
        toField.text = toOptions.first
        
        messageTypeField.inputView = UIPickerView(tag: 2, dataSource: self, delegate: self)
        messageTypeField.text = typeOptions.first
        
        messageField.layer.borderWidth = 1
        messageField.layer.borderColor = UIColor.lightGray.cgColor
        messageField.layer.cornerRadius = 5
        messageField.layer.masksToBounds = true
    }
    
    
    func setupPost() {
        if let post = self.post {
            self.title = "Editar Aviso"
            if post.userId != nil {
                toSelected = 2
                userIdField.text = "\(post.userId!)"
            } else if post.classroomId != nil {
                toSelected = 1
                classroomIdField.text = "\(post.classroomId!)"
            } else {
                toSelected = 0
            }
            toField.text = toOptions[toSelected]
            typeSelected = post.messageType
            messageTypeField.text = typeOptions[typeSelected]
            messageField.text = post.message
            
            //CAN`T CHANGE THE SUBJECT:
            toField.isUserInteractionEnabled = false
            toField.backgroundColor = UIColor(white: 0.9, alpha: 1)
            classroomIdField.isUserInteractionEnabled = false
            classroomIdField.backgroundColor = UIColor(white: 0.9, alpha: 1)
            userIdField.isUserInteractionEnabled = false
            userIdField.backgroundColor = UIColor(white: 0.9, alpha: 1)
            
            //CAN`T CHANGE THE MEDIA:
            mediaButton.isEnabled = false
            if let mediaFile = post.mediaFile {
                AppSyncClient.shared.downloadFileWithName(fileName: mediaFile.key) { (filePath) in
                    if post.mediaType == 1 {
                        let image = UIImage(contentsOfFile: filePath.path)
                        self.preview.image = image
                    } else {
                        let image = getThumbnailFrom(path: filePath)
                        self.preview.image = image
                    }
                }
            }
        }
    }
    
    @IBAction func send(sender:UIButton) {
        
        if toSelected == 1 && classroomIdField.text!.isEmpty {
            self.sendError()
            return
        }
        
        if toSelected == 2 && userIdField.text!.isEmpty {
            self.sendError()
            return
        }
        
        let authorId = AppConfig.shared.userId
        let authorName = AppConfig.shared.userName
        let schoolId = AppConfig.shared.schoolId
        let classId = toSelected == 1 ? Int(classroomIdField.text!) ?? 0 : nil
        let userId = toSelected == 2 ? Int(userIdField.text!) ?? 0 : nil        
        
        if post == nil {
            var input = CreatePostInput(authorId: authorId,
                                        authorName: authorName,
                                        messageType: typeSelected,
                                        message: messageField.text,
                                        schoolId: schoolId)
            if let cId = classId { input.classroomId = cId }
            if let uId = userId { input.userId = uId }
            var fileInput : S3ObjectInput? = nil
            if let mURL = mediaURL {
                input.mediaType = self.mediaType
                let mimeType = mediaType == 1 ? "image/jpeg" : "video/mp4"
                fileInput = S3ObjectInput(bucket: "media-deposit",
                                          key: generatedKey,
                                          region: "us-east-2",
                                          localUri: mURL.absoluteString,
                                          mimeType: mimeType)                
            }
            let mutation = CreatePostMutation(input: input, file: fileInput)
            AppSyncClient.shared.client?.perform(mutation: mutation, resultHandler: { (result, error) in
                if error != nil {
                    print("error: \(error!.localizedDescription)")
                    print("erro ao criar aviso")
                } else {
                    _ = self.navigationController?.popViewController(animated: true)
                }
            })
        } else {
            let input = UpdatePostInput(id: post!.id,
                                        messageType: typeSelected,
                                        message: messageField.text)
            let mutation = UpdatePostMutation(input: input)
            AppSyncClient.shared.client?.perform(mutation: mutation, optimisticUpdate: {
                (transaction) in
                do {
                    let query = FetchPostsQuery(schoolId: self.sId, classroomId: self.cId, userId: self.uId)
                    try transaction?.update(query: query, { (data: inout FetchPostsQuery.Data) in
                        if let index = data.fetchPosts?.items?.firstIndex(where: { $0?.id == self.post!.id }) {
                            data.fetchPosts?.items?[index]?.messageType = self.typeSelected
                            data.fetchPosts?.items?[index]?.message = self.messageField.text
                        }
                    })
                } catch {
                    print("Error updating store")
                }
            }, resultHandler: { (result, error) in
                if error != nil {
                    print("erro ao editar aviso")
                } else {
                    _ = self.navigationController?.popViewController(animated: true)
                }
            })
        }
    }
    
    @IBAction func addMedia(sender: UIButton){
        if mediaURL != nil {
            mediaURL = nil
            preview.image = nil
            mediaButton.setTitle("Adicionar Imagem/Video", for: .normal)
            return
        }
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Biblioteca", style: .default, handler: { (action) in
            self.loadImagePicker(fromLibrary: true)
        }))
        alertController.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            self.loadImagePicker(fromLibrary: false)
        }))
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    func loadImagePicker(fromLibrary: Bool){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        if fromLibrary {
            imagePicker.sourceType = .photoLibrary
        } else {
            imagePicker.sourceType = .camera
            imagePicker.showsCameraControls = true
        }
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: imagePicker.sourceType) ?? []
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
}

extension PostFormViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return toOptions.count
        }
        return typeOptions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return toOptions[row]
        }
        return typeOptions[row]
    }
}

extension PostFormViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            toField.text = toOptions[row]
            toSelected = row
        }
        if pickerView.tag == 2 {
            messageTypeField.text = typeOptions[row]
            typeSelected = row
        }
    }
}

extension PostFormViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.mediaButton.setTitle("Remover", for: .normal)
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        if mediaType == kUTTypeMovie {
            let url = info[UIImagePickerController.InfoKey.mediaURL] as! URL
            let image = getThumbnailFrom(path: url)
            self.preview.image = image
            self.mediaURL = url
            self.mediaType = 2
        }
        if mediaType == kUTTypeImage {
            let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            
            if let imageUrl = info[UIImagePickerController.InfoKey.imageURL] as? URL {
                self.mediaURL = imageUrl
                self.preview.image = image
            } else {
                let imageName = "\(generatedKey)"
                let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
                let localPath = URL(fileURLWithPath: documentDirectory!).appendingPathComponent(imageName)
                let data = image.jpegData(compressionQuality: 0.5)
                
                do {
                    try data?.write(to: localPath)
                } catch {
                    print("error writing image data")
                }
                if FileManager.default.fileExists(atPath: localPath.path) {
                    self.mediaURL = localPath
                    self.preview.image = image
                } else {
                    self.mediaURL = nil
                    self.preview.image = nil
                }
            }
            self.mediaType = 1
        }
        dismiss(animated: true, completion: nil)
    }
        
}
