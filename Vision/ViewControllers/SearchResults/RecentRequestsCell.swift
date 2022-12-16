//
//  RecentRequestsCell.swift
//  Vision
//
//  Created by Denys on 08.08.2022.
//

import UIKit

class RecentRequestsCell: UITableViewCell {
    @IBOutlet var recentImage: UIImageView!
    @IBOutlet var recentLb: UILabel!
    @IBOutlet var recentView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
