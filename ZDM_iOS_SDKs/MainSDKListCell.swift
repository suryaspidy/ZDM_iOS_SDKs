//
//  MainSDKListCell.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 11/12/22.
//

import UIKit

class MainSDKListCell: UITableViewCell {

    @IBOutlet var sdkImg: UIImageView!
    @IBOutlet var contentHolderView: UIView!
    @IBOutlet var sdkName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setStyle() {
        self.contentHolderView.layer.cornerRadius = 20
        self.contentHolderView.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        self.contentHolderView.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.contentHolderView.layer.shadowOpacity = 1
    }
    
    func renderData(_ data: HomeCardSkaleton) {
        self.setStyle()
        self.sdkImg.image = UIImage(named: data.sdkImgUrl)
        self.sdkName.text = data.sdkName
    }
    
}
