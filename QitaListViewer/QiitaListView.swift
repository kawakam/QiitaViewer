//
//  QiitaListView.swift
//  QitaListViewer
//
//  Created by 川上智樹 on 2016/03/25.
//  Copyright © 2016年 yatuhasiumai. All rights reserved.
//

import UIKit

class QiitaListView: UIView {
    var table: UITableView
    
    required init(model: QiitaListModel) {
        table = UITableView(frame: CGRectZero, style: .Plain)
        super.init(frame: CGRectZero)
        self.addSubview(table)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        table.frame = frame
    }
}
