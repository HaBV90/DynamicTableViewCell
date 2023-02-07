//
//  Card.swift
//  DynamicTableViewCell
//
//  Created by HaBV on 07/02/2023.
//

import UIKit

struct Card {
    var avatar: UIImage
    var title: String
    var detail: String
    var rightImage: UIImage?
    
    init(avatar: UIImage, title: String, detail: String, rightImage: UIImage?) {
        self.avatar = avatar
        self.title = title
        self.detail = detail
        self.rightImage = rightImage
    }
}
