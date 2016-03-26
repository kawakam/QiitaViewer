//
//  Article.swift
//  QitaListViewer
//
//  Created by 川上智樹 on 2016/03/26.
//  Copyright © 2016年 yatuhasiumai. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Article: NSObject {
    
    class func getArticles(callback: () -> Void) -> [String: String?] {
        var article: [String: String?]!
        Alamofire.request(.GET, "https://qiita.com/api/v2/items")
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }
                
                let json = JSON(object)
                json.forEach { (_, json) in
                     article = [
                        "title": json["title"].string,
                        "userId": json["user"]["id"].string
                    ]
                    callback()
                }
        }
        return article
    }
}
