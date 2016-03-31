//
//  Article.swift
//  QitaListViewer
//
//  Created by 川上智樹 on 2016/03/26.
//  Copyright © 2016年 yatuhasiumai. All rights reserved.
//

import UIKit

struct Article {
    let title: String
    let userId: String
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
    }
}
