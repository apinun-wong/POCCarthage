//
//  ViewController.swift
//  CarthageSample
//
//  Created by Apinun Wongintawang on 5/29/19.
//  Copyright © 2019 Apinun Wongintawang. All rights reserved.
//

import UIKit
import SDWebImage
import SnapKit

class ViewController: UIViewController {
    private var imgView: UIImageView!
    private var titleLabel: UILabel!
    private let storyText = "Pokémon Detective Pikachu is a 2019 urban fantasy mystery film directed by Rob Letterman. Based on the Pokémon franchise created by Satoshi Tajiri and the 2016 video game Detective Pikachu,[4] it was written by Letterman, Dan Hernandez, Benji Samit and Derek Connolly, from a story by Hernandez, Samit and Nicole Perlman. The film was produced by Legendary Pictures in association with Toho. It is the first live-action Pokemon film.[5] Ryan Reynolds stars as the voice and facial motion capture of Pikachu, with Justice Smith, Kathryn Newton, Suki Waterhouse, Omar Chaparro, Chris Geere, Ken Watanabe and Bill Nighy in live-action roles."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
        self.loadImageUrl()
        
    }
    
    private func setUpUI() {
        var imgView: UIImageView {
            let imgView = UIImageView()
            imgView.contentMode = .scaleAspectFit
            imgView.clipsToBounds = true
            imgView.layer.cornerRadius = 50
            imgView.backgroundColor = .lightGray
            return imgView
        }
        
        let label: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            return label
        }()
        
        self.imgView = imgView
        self.titleLabel = label
        self.titleLabel.text = storyText
        
        
        
        self.view.addSubview(self.imgView)
        self.view.addSubview(titleLabel)
        
        self.imgView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
            make.bottom.equalTo(self.titleLabel.snp.top).offset(25)
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.bottom.equalToSuperview().offset(20)
        }
    }
    
    private func loadImageUrl() {
        imgView.sd_setImage(with: URL(string: "https://s3-us-east-2.amazonaws.com/redefined/wp-content/uploads/2019/02/26145047/detectivepikachu.jpg")) { (img, error, cacheType, url) in

        }
    }


}


