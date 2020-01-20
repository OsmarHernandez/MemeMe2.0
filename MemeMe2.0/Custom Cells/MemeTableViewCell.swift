//
//  MemeTableViewCell.swift
//  MemeMe2.0
//
//  Created by Osmar Hernández on 20/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {

    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeTopAndBottomLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureUI(meme: Meme) {
        memeImageView.image = meme.memedImage
        memeTopAndBottomLabel.text = meme.topText + "..." + meme.bottomText
    }
}
