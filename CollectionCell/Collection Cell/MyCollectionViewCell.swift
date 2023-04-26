//
//  MyCollectionViewCell.swift
//  CollectionCell
//
//  Created by Mohan K on 24/11/22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    static let identifier = "MyCollectionViewCell"
        
        static func nib() -> UINib {
            return UINib(nibName: "MyCollectionViewCell", bundle: nil)
        }
        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        public func configure(with model: Model) {
            self.myLabel.text = model.text
            self.myImageView.image = UIImage(named: model.imageName)
            self.myImageView.contentMode = .scaleAspectFit
        }
   

}
