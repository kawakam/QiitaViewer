//
//  QiitaListModel.swift
//  QitaListViewer
//
//  Created by 川上智樹 on 2016/03/25.
//  Copyright © 2016年 yatuhasiumai. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class QiitaListModel: NSObject, UITableViewDataSource {
    var articles: [[String: String?]] = []

    override init() {
        Article.getArticles(articles)        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "cell")
        
        let article = articles[indexPath.row]
        cell.textLabel?.text = article["title"]!
        cell.detailTextLabel?.text = article["userId"]!
        return cell
    }
}