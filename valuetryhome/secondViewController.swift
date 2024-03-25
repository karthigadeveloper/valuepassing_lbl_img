//
//  secondViewController.swift
//  valuetryhome
//
//  Created by Karthiga on 9/7/23.
//

import UIKit

class secondViewController: UIViewController {
    var name:String?
    var img:UIImage?
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = name
        image2.image = img
    }
    

    
}
