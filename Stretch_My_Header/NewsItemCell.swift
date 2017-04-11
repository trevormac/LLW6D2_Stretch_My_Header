//
//  NewsItemCell.swift
//  Stretch_My_Header
//
//  Created by Trevor MacGregor on 2017-04-11.
//  Copyright © 2017 Trevor MacGregor. All rights reserved.
//

import UIKit

class NewsItemCell: UITableViewCell {

    @IBOutlet var categoryItem: UILabel!
    
    @IBOutlet var summaryLabel: UILabel!
    
    var newsItem: NewsItem? {
        didSet {
            if let item = newsItem {
                categoryItem.text = item.category.toString()
                categoryItem.textColor = item.category.toColor()
                summaryLabel.text = item.summary
            }else {
                categoryItem.text = nil
                summaryLabel.text = nil
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
