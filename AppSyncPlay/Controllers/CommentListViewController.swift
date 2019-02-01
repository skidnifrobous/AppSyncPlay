//
//  CommentListViewController.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 26/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import UIKit
import AWSAppSync

class CommentListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var appSyncClient: AWSAppSyncClient? {
        return AppSyncClient.shared.client
    }
    var post: FetchPostsQuery.Data.FetchPost.Item?
    var commentList: [FetchCommentsQuery.Data.FetchComment.Item?]? = [] {
        didSet{
            tableView.reloadData()
        }
    }
    
    var onCreateWatcher : AWSAppSyncSubscriptionWatcher<OnCreateCommentSubscription>?
    var onUpdateWatcher : AWSAppSyncSubscriptionWatcher<OnUpdateCommentSubscription>?
    var onDeleteWatcher : AWSAppSyncSubscriptionWatcher<OnDeleteCommentSubscription>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
        setupSubscriptions()
        loadAllComments()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        onCreateWatcher?.cancel()
        onUpdateWatcher?.cancel()
        onDeleteWatcher?.cancel()
    }
    
    func setupView() {
        self.title = "Comentários"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(newCommentAction))
    }
    
    func setupSubscriptions() {
        let onCreateSubscription = OnCreateCommentSubscription(postId: post!.id)
        let onUpdateSubscription = OnUpdateCommentSubscription(postId: post!.id)
        let onDeleteSubscription = OnDeleteCommentSubscription(postId: post!.id)
        
        do {
            onCreateWatcher = try appSyncClient?.subscribe(subscription: onCreateSubscription, resultHandler: { (result, transaction, error) in
                if let result = result {
                    print("oi!")
                    let newComment = result.data!.onCreateComment!
                    let commentToAdd = FetchCommentsQuery.Data.FetchComment.Item(postId: newComment.postId, commentId: newComment.commentId, authorId: newComment.authorId, authorName: newComment.authorName, createdAt: newComment.createdAt, updatedAt: newComment.updatedAt, content: newComment.content)
                    do {
                        let query = FetchCommentsQuery(postId: self.post!.id)
                        try transaction?.update(query: query, { (data: inout FetchCommentsQuery.Data) in
                            data.fetchComments?.items?.append(commentToAdd)
                        })
                        self.loadAllCommentsFromCache()
                    } catch {
                        print("Error updating store")
                    }
                }
            })
            
            onUpdateWatcher = try appSyncClient?.subscribe(subscription: onUpdateSubscription, resultHandler: { (result, transaction, error) in
                if let result = result {
                    let comment = result.data!.onUpdateComment!
                    let commentToUpdate = FetchCommentsQuery.Data.FetchComment.Item(postId: comment.postId, commentId: comment.commentId, authorId: comment.authorId, authorName: comment.authorName, createdAt: comment.createdAt, updatedAt: comment.updatedAt, content: comment.content)
                    do {
                        let query = FetchCommentsQuery(postId: self.post!.id)
                        try transaction?.update(query: query, { (data: inout FetchCommentsQuery.Data) in
                            if let index = data.fetchComments?.items?.firstIndex(where: { $0?.commentId == comment.commentId }) {
                                data.fetchComments?.items?[index] = commentToUpdate
                            }
                        })
                        self.loadAllCommentsFromCache()
                    } catch {
                        print("Error updating store")
                    }
                }
            })
            
            onDeleteWatcher = try appSyncClient?.subscribe(subscription: onDeleteSubscription, resultHandler: { (result, transaction, error) in
                if let result = result {
                    let comment = result.data!.onDeleteComment!
                    do {
                        let query = FetchCommentsQuery(postId: self.post!.id)
                        try transaction?.update(query: query, { (data: inout FetchCommentsQuery.Data) in
                            if let index = data.fetchComments?.items?.firstIndex(where: { $0?.commentId == comment.commentId }) {
                                print("removing comment")
                                data.fetchComments?.items?.remove(at: index)
                            }
                        })
                        self.loadAllCommentsFromCache()
                    } catch {
                        print("Error updating store")
                    }
                }
            })

        } catch {
            print("Error starting on create subscription.")
        }
    }
    
    func loadAllComments() {
        let query = FetchCommentsQuery(postId: post!.id)
        appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataAndFetch, resultHandler: { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let result = result {
                self.commentList = result.data?.fetchComments?.items?.sorted(by: {$0?.createdAt ?? "" < $1?.createdAt ?? ""})
            }
        })
    }
    
    func loadAllCommentsFromCache() {
        let query = FetchCommentsQuery(postId: post!.id)
        appSyncClient?.fetch(query: query, cachePolicy: CachePolicy.returnCacheDataDontFetch, resultHandler: { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let result = result {
                self.commentList = result.data?.fetchComments?.items?.sorted(by: {$0?.createdAt ?? "" < $1?.createdAt ?? ""})
            }
        })
    }
    
    @objc func newCommentAction() {
        let alertController = UIAlertController(title: "Comentar post", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (field) in
            field.placeholder = "Deixe um comentário..."
        }
        
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            let field = alertController.textFields![0]
            if !field.text!.isEmpty {
                self.addComment(content: field.text!)
            }
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func editCommentAction(comment: FetchCommentsQuery.Data.FetchComment.Item){
        let alertController = UIAlertController(title: "Editar comentário", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (field) in
            field.text = comment.content
        }
        
        alertController.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            let field = alertController.textFields![0]
            if !field.text!.isEmpty {
                self.editComment(commentId: comment.commentId, content: field.text!)
            }
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func addComment(content:String) {
        let authorId = AppConfig.shared.userId
        let authorName = AppConfig.shared.userName
        
        let input = CreateCommentInput(postId: self.post!.id, authorId: authorId, authorName: authorName, content: content)
        let mutation = CreateCommentMutation(input: input)
        appSyncClient?.perform(mutation: mutation, resultHandler: { (result, error) in
            if error != nil {
                print("erro ao criar comentário")
            } else {
                self.loadAllComments()
            }
        })
    }
    
    func editComment(commentId: String, content:String) {
        let input = UpdateCommentInput(postId: self.post!.id, commentId: commentId, content: content)
        let mutation = UpdateCommentMutation(input: input)
        AppSyncClient.shared.client?.perform(mutation: mutation, optimisticUpdate: {
            (transaction) in
            do {
                let query = FetchCommentsQuery(postId: self.post!.id)
                try transaction?.update(query: query, { (data: inout FetchCommentsQuery.Data) in
                    if let index = data.fetchComments?.items?.firstIndex(where: { $0?.postId == self.post!.id && $0?.commentId == commentId }) {
                        data.fetchComments?.items?[index]?.content = content
                    }
                })
                self.loadAllCommentsFromCache()
            } catch {
                print("Error updating store")
            }
        }, resultHandler: { (result, error) in
            if error != nil {
                print("erro ao editar comentário")
            } else {
                self.loadAllComments()
            }
        })
    }
    
    func deleteComment(comment: FetchCommentsQuery.Data.FetchComment.Item) {
        let input = DeleteCommentInput(postId: self.post!.id, commentId: comment.commentId)
        let mutation = DeleteCommentMutation(input: input)
        appSyncClient?.perform(mutation: mutation, optimisticUpdate: { (transaction) in
            do {
                let query = FetchCommentsQuery(postId: self.post!.id)
                try transaction?.update(query: query, { (data: inout FetchCommentsQuery.Data) in
                    if let index = data.fetchComments?.items?.firstIndex(where: { $0?.commentId == comment.commentId }) {
                        print("removing")
                        data.fetchComments?.items?.remove(at: index)
                    }
                })
                self.loadAllCommentsFromCache()
            } catch {
                print("Error updating store")
            }
        })
    }
}

extension CommentListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        
        let comment = commentList?[indexPath.row]
        
        let authorLabel = cell.viewWithTag(1) as! UILabel
        let dateLabel = cell.viewWithTag(2) as! UILabel
        let contentLabel = cell.viewWithTag(3) as! UILabel
        
        authorLabel.text = comment?.authorName
        dateLabel.text = comment?.createdAt
        contentLabel.text = comment?.content
        
        return cell
    }
    
}

extension CommentListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        var actions : [UITableViewRowAction] = []
        if let authorId = commentList?[indexPath.row]?.authorId, authorId == AppConfig.shared.userId {
            let delete = UITableViewRowAction(style: .destructive, title: "Deletar") { (action, indexPath) in
                if let comment = self.commentList?[indexPath.row] {
                    self.deleteComment(comment: comment)
                }
            }
            
            let edit = UITableViewRowAction(style: .normal, title: "Editar") { (action, indexPath) in
                if let comment = self.commentList?[indexPath.row] {
                    self.editCommentAction(comment: comment)
                }
            }
            edit.backgroundColor = UIColor(red: 100.0/255.0, green: 149.0/255.0, blue: 237.0/255.0, alpha: 1)
            
            actions.append(delete)
            actions.append(edit)
        }
        return actions
    }
}
