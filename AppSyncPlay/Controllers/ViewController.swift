//
//  ViewController.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 15/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import UIKit
import AWSAppSync
import AVFoundation
import AVKit
import Lightbox

class ViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?
    @IBOutlet weak var tableView: UITableView!
    
    var postList: [FetchPostsQuery.Data.FetchPost.Item?]? = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    let sId = AppConfig.shared.schoolId
    let cId = AppConfig.shared.classroomId
    let uId = AppConfig.shared.userId
    
    //ON CREATE WATCHERS
    var onCreateWatcherSchool: AWSAppSyncSubscriptionWatcher<OnCreatePostSubscription>?
    var onCreateWatcherClass: AWSAppSyncSubscriptionWatcher<OnCreatePostSubscription>?
    var onCreateWatcherUser: AWSAppSyncSubscriptionWatcher<OnCreatePostSubscription>?
    //ON UPDATE WATCHERS
    var onUpdateWatcherSchool: AWSAppSyncSubscriptionWatcher<OnUpdatePostSubscription>?
    var onUpdateWatcherClass: AWSAppSyncSubscriptionWatcher<OnUpdatePostSubscription>?
    var onUpdateWatcherUser: AWSAppSyncSubscriptionWatcher<OnUpdatePostSubscription>?
    //ON DELETE WATCHERS
    var onDeleteWatcherSchool: AWSAppSyncSubscriptionWatcher<OnDeletePostSubscription>?
    var onDeleteWatcherClass: AWSAppSyncSubscriptionWatcher<OnDeletePostSubscription>?
    var onDeleteWatcherUser: AWSAppSyncSubscriptionWatcher<OnDeletePostSubscription>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        appSyncClient = AppSyncClient.shared.client

        setupView()
        
        startOnUpdateSubscriptions()
        startOnCreateSubscriptions()
        startOnDeleteSubscriptions()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadAllPosts()
    }
    
    func setupView() {
        self.title = "Quadro de Avisos"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(logoutButtonAction))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(newPostAction))
    }
    
    @objc func logoutButtonAction() {
        let loginViewController = self.storyboard!.instantiateInitialViewController()
        transitionTo(viewController: loginViewController!)
    }
    
    @objc func newPostAction() {
        let postFormViewController = self.storyboard?.instantiateViewController(withIdentifier: "postForm")
        self.navigationController?.pushViewController(postFormViewController!, animated: true)
    }
    
    func editPostAction(post:FetchPostsQuery.Data.FetchPost.Item?) {
        let postFormViewController = self.storyboard?.instantiateViewController(withIdentifier: "postForm") as! PostFormViewController
        postFormViewController.post = post
        self.navigationController?.pushViewController(postFormViewController, animated: true)
    }
    
    func deletePost(post:FetchPostsQuery.Data.FetchPost.Item?){
        if let post = post {
            let input = DeletePostInput(id: post.id)
            let mutation = DeletePostMutation(input: input)
            appSyncClient?.perform(mutation: mutation,
                                   optimisticUpdate: { (transaction) in
                                    do {
                                        let query = FetchPostsQuery(schoolId: self.sId, classroomId: self.cId, userId: self.uId)
                                        try transaction?.update(query: query, { (data: inout FetchPostsQuery.Data) in
                                            if let index = data.fetchPosts?.items?.firstIndex(where: { $0?.id == post.id }) {
                                                print("removing")
                                                data.fetchPosts?.items?.remove(at: index)
                                            }
                                        })
                                        self.loadAllPostsFromCache()
                                    } catch {
                                        print("Error updating store")
                                    }
            })
        }
    }
    
    func startOnCreateSubscriptions() {
        let onCreateSubSchool = OnCreatePostSubscription(schoolId: sId)
        let onCreateSubClass = OnCreatePostSubscription(schoolId: sId, classroomId: cId)
        let onCreateSubUser = OnCreatePostSubscription(schoolId: sId, userId: uId)
        
        do {
            onCreateWatcherSchool = try appSyncClient?.subscribe(subscription: onCreateSubSchool, resultHandler: { (result, transaction, error) in
                self.onCreateHandler(result, transaction, error)
            })
            onCreateWatcherClass = try appSyncClient?.subscribe(subscription: onCreateSubClass, resultHandler: { (result, transaction, error) in
                self.onCreateHandler(result, transaction, error)
            })
            onCreateWatcherUser = try appSyncClient?.subscribe(subscription: onCreateSubUser, resultHandler: { (result, transaction, error) in
                self.onCreateHandler(result, transaction, error)
            })
        } catch {
            print("Error starting on create subscription.")
        }
    }
    
    func startOnUpdateSubscriptions() {
        let onUpdateSubSchool = OnUpdatePostSubscription(schoolId: sId)
        let onUpdateSubClass = OnUpdatePostSubscription(schoolId: sId, classroomId: cId)
        let onUpdateSubUser = OnUpdatePostSubscription(schoolId: sId, userId: uId)
        do {
            onUpdateWatcherSchool = try appSyncClient?.subscribe(subscription: onUpdateSubSchool, resultHandler: { (result, transaction, error) in
                self.onUpdateHandler(result, transaction, error)
            })
            onUpdateWatcherClass = try appSyncClient?.subscribe(subscription: onUpdateSubClass, resultHandler: { (result, transaction, error) in
                self.onUpdateHandler(result, transaction, error)
            })
            onUpdateWatcherUser = try appSyncClient?.subscribe(subscription: onUpdateSubUser, resultHandler: { (result, transaction, error) in
                self.onUpdateHandler(result, transaction, error)
            })
        } catch {
            print("Error starting on update subscription.")
        }
    }
    
    func startOnDeleteSubscriptions() {
        let onDeleteSubSchool = OnDeletePostSubscription(schoolId: sId)
        let onDeleteSubClass = OnDeletePostSubscription(schoolId: sId, classroomId: cId)
        let onDeleteSubUser = OnDeletePostSubscription(schoolId: sId, userId: uId)
        
        do {
            onDeleteWatcherSchool = try appSyncClient?.subscribe(subscription: onDeleteSubSchool, resultHandler: { (result, transaction, error) in
                self.onDeleteHandler(result, transaction, error)
            })
            onDeleteWatcherClass = try appSyncClient?.subscribe(subscription: onDeleteSubClass, resultHandler: { (result, transaction, error) in
                self.onDeleteHandler(result, transaction, error)
            })
            onDeleteWatcherUser = try appSyncClient?.subscribe(subscription: onDeleteSubUser, resultHandler: { (result, transaction, error) in
                self.onDeleteHandler(result, transaction, error)
            })
        } catch {
            print("Error starting on update subscription.")
        }
    }
    
    func onCreateHandler(_ result: GraphQLResult<OnCreatePostSubscription.Data>?,_ transaction: ApolloStore.ReadWriteTransaction?,_ error: Error?){
        if let result = result {
            let newPost = result.data!.onCreatePost!
            var media : FetchPostsQuery.Data.FetchPost.Item.MediaFile? = nil
            if let file = newPost.mediaFile {
                media = FetchPostsQuery.Data.FetchPost.Item.MediaFile(bucket: file.bucket, key: file.key, region: file.region)
            }
            let postToAdd = FetchPostsQuery.aData.FetchPost.Item(id: newPost.id, authorId: newPost.authorId, authorName: newPost.authorName, createdAt: newPost.createdAt, updatedAt: newPost.updatedAt, messageType: newPost.messageType, message: newPost.message, mediaFile: media, mediaType: newPost.mediaType, schoolId: newPost.schoolId, classroomId: newPost.classroomId, userId: newPost.userId)
            do{
                let query = FetchPostsQuery(schoolId: sId, classroomId: cId, userId: uId)
                try transaction?.update(query: query, { (data: inout FetchPostsQuery.Data) in
                    data.fetchPosts?.items?.append(postToAdd)
                })
                self.loadAllPostsFromCache()
            } catch {
                print("Error updating store")
            }
        }
    }
    
    func onUpdateHandler(_ result: GraphQLResult<OnUpdatePostSubscription.Data>?,_ transaction: ApolloStore.ReadWriteTransaction?,_ error: Error?){
        if let result = result {
            let post = result.data!.onUpdatePost!
            var media : FetchPostsQuery.Data.FetchPost.Item.MediaFile? = nil
            if let file = post.mediaFile {
                media = FetchPostsQuery.Data.FetchPost.Item.MediaFile(bucket: file.bucket, key: file.key, region: file.region)
            }
            let postToUpdate = FetchPostsQuery.Data.FetchPost.Item(id: post.id, authorId: post.authorId, authorName: post.authorName, createdAt: post.createdAt, updatedAt: post.updatedAt, messageType: post.messageType, message: post.message, mediaFile: media, mediaType: post.mediaType, schoolId: post.schoolId, classroomId: post.classroomId, userId: post.userId)
            do {
                let query = FetchPostsQuery(schoolId: sId, classroomId: cId, userId: uId)
                try transaction?.update(query: query, { (data: inout FetchPostsQuery.Data) in
                    if let index = data.fetchPosts?.items?.firstIndex(where: { $0?.id == post.id }) {
                        data.fetchPosts?.items?[index] = postToUpdate
                    }
                })
                self.loadAllPostsFromCache()
            } catch {
                print("Error updating store")
            }
        }
    }
    
    func onDeleteHandler(_ result: GraphQLResult<OnDeletePostSubscription.Data>?,_ transaction: ApolloStore.ReadWriteTransaction?,_ error: Error?){
        if let result = result {
            let post = result.data!.onDeletePost!
            do {
                let query = FetchPostsQuery(schoolId: sId, classroomId: cId, userId: uId)
                try transaction?.update(query: query, { (data: inout FetchPostsQuery.Data) in
                    if let index = data.fetchPosts?.items?.firstIndex(where: { $0?.id == post.id }) {
                        print("removing")
                        data.fetchPosts?.items?.remove(at: index)
                    }
                })
                self.loadAllPostsFromCache()
            } catch {
                print("Error updating store")
            }
        }
    }
    
    func loadAllPosts() {
        let query = FetchPostsQuery(schoolId: sId, classroomId: cId, userId: uId)
        appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataAndFetch, resultHandler: { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let result = result {
                self.postList = result.data?.fetchPosts?.items?.sorted(by: {$0?.createdAt ?? "" > $1?.createdAt ?? ""})
            }
        })
    }
    
    func loadAllPostsFromCache() {
        let query = FetchPostsQuery(schoolId: sId, classroomId: cId, userId: uId)
        appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let result = result {
                self.postList = result.data?.fetchPosts?.items?.sorted(by: {$0?.createdAt ?? "" > $1?.createdAt ?? ""})
            }
        })
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = self.postList![indexPath.row]
        let identifier =  post?.mediaFile == nil ? "cell" : "cellMedia"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! PostCell
        
        //THEME
        switch post!.messageType {
        case 0: cell.setTheme(.regular)
        case 1: cell.setTheme(.general)
        case 2: cell.setTheme(.urgent)
        default: cell.setTheme(.regular)
        }
        
        //SUBJECT
        var subject = ""
        if let userId = post?.userId {
            subject = DataBase.users.first{ $0.id == userId }?.name ?? "User"
        } else if let classId = post?.classroomId {
            subject = DataBase.classrooms.first{ $0.id == classId }?.name ?? "Classroom"
        } else {
            subject = DataBase.schools.first{ $0.id == post?.schoolId }?.name ?? "School"
        }
        
        //DATE
        var date : Date {
            let df = ISO8601DateFormatter()
            df.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            return df.date(from: post!.createdAt)!
        }
        var dateStr : String {
            let df = DateFormatter()
            df.dateFormat = "dd/MM/yyyy - HH:mm:ss"
            return df.string(from: date)
        }
        
        //MEDIA
        if let mediaFile = post?.mediaFile {
            AppSyncClient.shared.downloadFileWithName(fileName: mediaFile.key) { (filePath) in
                if post?.mediaType == 1 {
                    let image = UIImage(contentsOfFile: filePath.path)
                    cell.setImage(image, isVideo: false)
                    cell.action = {
                        let images = [LightboxImage(image: image!)]
                        let controller = LightboxController(images: images, startIndex: 0)
                        controller.dynamicBackground = true
                        self.present(controller, animated: true, completion: nil)
                    }
                } else {
                    let image = getThumbnailFrom(path: filePath)
                    cell.setImage(image, isVideo: true)
                    cell.action = {
                        let videoController = AVPlayerViewController()
                        videoController.player = AVPlayer(url: filePath)
                        self.present(videoController, animated: true) {
                            videoController.player?.play()
                        }
                    }
                }
            }
        }
        
        cell.subject.text = "Para: \(subject)"
        cell.message.text = post?.message
        cell.authorAndDate.text = "\(post?.authorName ?? "") em \(dateStr)"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let post = postList?[indexPath.row] {
            let commentListViewController = self.storyboard?.instantiateViewController(withIdentifier: "commentList") as! CommentListViewController
            commentListViewController.post = post
            self.navigationController?.pushViewController(commentListViewController, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        var actions : [UITableViewRowAction] = []
        if let authorId = postList?[indexPath.row]?.authorId, authorId == AppConfig.shared.userId {
            let delete = UITableViewRowAction(style: .destructive, title: "Deletar") { (action, indexPath) in
                let post = self.postList?[indexPath.row]
                self.deletePost(post: post)
            }
            
            let edit = UITableViewRowAction(style: .normal, title: "Editar") { (action, indexPath) in
                let post = self.postList?[indexPath.row]
                self.editPostAction(post: post)
            }
            edit.backgroundColor = UIColor(red: 100.0/255.0, green: 149.0/255.0, blue: 237.0/255.0, alpha: 1)
            
            actions.append(delete)
            actions.append(edit)
        }
        return actions
    }
}
