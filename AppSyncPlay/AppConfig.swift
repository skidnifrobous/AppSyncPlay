//
//  AppConfig.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 24/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AppConfig {
    static let shared = AppConfig()
    
    var schoolId = 1
    var classroomId = 1
    var userId = 1
    var userName = "Anonymous"
    
    private init() {}
}

func transitionTo(viewController:UIViewController) {
    guard let window = UIApplication.shared.keyWindow else {
        return
    }
    guard let rootViewController = window.rootViewController else {
        return
    }
    
    viewController.view.layoutIfNeeded()
    viewController.view.frame = rootViewController.view.frame
    
    UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
        window.rootViewController = viewController
    }, completion: { completed in
        // maybe do something here
    })
}

func AWSS3UrlWithObject(s3Object:FetchPostsQuery.Data.FetchPost.Item.MediaFile) -> URL {
    //https://s3.us-east-2.amazonaws.com/media-deposit/S1K1I1D%5D20181031180529.mp4
    let urlString = "https://s3.\(s3Object.region).amazonaws.com/\(s3Object.bucket)/\(s3Object.key)"
    return URL(string: urlString)!
}

func getThumbnailFrom(path: URL) -> UIImage? {
    do {        
        let asset = AVURLAsset(url: path , options: nil)
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        imgGenerator.appliesPreferredTrackTransform = true
        let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(value: 0, timescale: 1), actualTime: nil)
        let thumbnail = UIImage(cgImage: cgImage)
        return thumbnail
    } catch let error {
        print("*** Error generating thumbnail: \(error.localizedDescription)")
        return nil
    }
}

extension UITextField {
    func addCustomToolBar() {
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(donePressed))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        self.inputAccessoryView = toolBar
    }
    
    @objc func donePressed() {
        self.resignFirstResponder()
    }
}

extension UITextView {
    func addCustomToolBar() {
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(donePressed))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBar.setItems([spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        self.inputAccessoryView = toolBar
    }
    
    @objc func donePressed() {
        self.resignFirstResponder()
    }
}

extension UIViewController {
    func sendError() {
        let alertView = UIAlertController(title: "Erro", message: "\nTA ERRADO OTARO!!!\n", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertView, animated: true, completion: nil)
    }
}

extension UIPickerView {
    convenience init(tag: Int, dataSource: UIPickerViewDataSource, delegate: UIPickerViewDelegate) {
        self.init()
        self.tag = tag
        self.dataSource = dataSource
        self.delegate = delegate
    }
}
