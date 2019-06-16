//
//  ViewController.swift
//  CarthageSample
//
//  Created by Apinun Wongintawang on 5/29/19.
//  Copyright © 2019 Apinun Wongintawang. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.af_setImage(withURL: URL(string: "https://s3-us-east-2.amazonaws.com/redefined/wp-content/uploads/2019/02/26145047/detectivepikachu.jpg")!)
    }


}

