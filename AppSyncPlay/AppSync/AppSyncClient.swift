//
//  AppSyncClient.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 15/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import Foundation
import AWSAppSync
import AWSS3

class AppSyncClient {
    static let shared = AppSyncClient()
    var client : AWSAppSyncClient?
    let bucketName = "media-deposit"
    
    private let tmpDir = FileManager.default.urls(for: .cachesDirectory, in: .allDomainsMask).first
    
    private init() {
        let databaseURL = URL(fileURLWithPath:NSTemporaryDirectory()).appendingPathComponent("my_DB")
        let credentialsProvider = AWSStaticCredentialsProvider(accessKey: "AKIAJJCORGHJNFC3OSMQ", secretKey: "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")
//        let credentialsProvider = AWSCognitoCredentialsProvider(regionType:.USEast2, identityPoolId:"us-east-2:f62e3fd8-1e90-46c3-bbb1-dac28af6588e")
        
        let configuration = AWSServiceConfiguration(region:.USEast2, credentialsProvider:credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration
        do {
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncClientInfo: AWSAppSyncClientInfo(), credentialsProvider: credentialsProvider, databaseURL: databaseURL, s3ObjectManager: AWSS3TransferUtility.default())
            // Initialize the AWS AppSync client
            self.client = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appsync client. \(error)")
        }
    }
    
    func downloadFileWithName(fileName:String, onComplete:@escaping (_ filePath:URL)->()){
        let urlPath = tmpDir!.appendingPathComponent(fileName)
        if FileManager.default.fileExists(atPath: urlPath.path) {
            onComplete(urlPath)
        } else {
            AWSS3TransferUtility.default().download(to: urlPath, bucket: bucketName, key: fileName, expression: nil) { (task, url, data, error) in
                if let error = error {
                    print("Download error: \(error.localizedDescription)")
                } else {
                    onComplete(url!)
                }
            }
        }        
    }
}
