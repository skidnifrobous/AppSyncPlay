//
//  PostCell.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 25/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var cardView : UIView!
    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var message : UILabel!
    @IBOutlet weak var authorAndDate : UILabel!
    @IBOutlet weak var preview : UIImageView?
    @IBOutlet weak var videoIndicator : UIImageView?
    @IBOutlet weak var previewLayout : NSLayoutConstraint?
    
    var action : (()->())?
    
    override func prepareForReuse() {
        self.preview?.image = UIImage(named: "placeholder")
//        self.previewLayout.constant = 0
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func imageButton(sender: UIButton) {
        if let action = self.action {
            action()
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTheme(_ theme: PostCellTheme) {
        switch theme {
        case .regular:
            cardView.backgroundColor = UIColor.white
            subject.textColor = UIColor.black
            authorAndDate.textColor = UIColor.lightGray
            message.textColor = UIColor.black
        case .general:
            cardView.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 190.0/225.0, alpha: 1)
            subject.textColor = UIColor.black
            authorAndDate.textColor = UIColor.lightGray
            message.textColor = UIColor.black
        case .urgent:
            cardView.backgroundColor = UIColor(red: 139.0/255.0, green: 0, blue: 0, alpha: 1)
            subject.textColor = UIColor.white
            authorAndDate.textColor = UIColor(white: 0.9, alpha: 1)
            message.textColor = UIColor.white
        }
    }
    
    func setImage(_ image: UIImage?, isVideo: Bool) {
        self.previewLayout?.constant = image == nil ? 0 : 200
        DispatchQueue.main.async {
            self.preview?.image = image
            self.videoIndicator?.isHidden = !isVideo
        }
    }

}

enum PostCellTheme {
    case regular
    case general
    case urgent
}
