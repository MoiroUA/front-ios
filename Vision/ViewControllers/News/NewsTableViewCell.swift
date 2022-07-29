//
//  NewsTableViewCell.swift
//  Vision
//
//  Created by Denys on 06.06.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet var newsImage: UIImageView!
    @IBOutlet var newsText: UILabel!
    @IBOutlet var newsView: UIView!
    
    @IBOutlet var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
