//
//  GetArticles.swift
//  QiitaViewer
//
//  Created by 川上智樹 on 2016/03/31.
//  Copyright © 2016年 yatuhasiumai. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class GetArticles: NSObject {
    
    class func getArticles(callback: () -> Void) -> [Article] {
        var articles: [Article] = []

        Alamofire.request(.GET, "https://qiita.com/api/v2/items")
            .responseJSON { response in
                guard let object = response.result.value else { return }
                
                let json = JSON(object)
                json.forEach { (_, json) in
                    let article = Article(title: json["title"].string!, userId: json["user"]["id"].string!)
                    articles.append(article)
                }
        }
        callback()
        return articles
    }
}
