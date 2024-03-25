//
//  ViewController.swift
//  valuetryhome
//
//  Created by Karthiga on 9/7/23.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var image1: UIImageView!
    
    let imagepicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagepicker.delegate = self
        image1.layer.borderWidth = 11
        image1.layer.cornerRadius = .init(50)
        image1.layer.borderColor = .init(red: 0, green: 0, blue: 100, alpha: 100)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let i = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image1.image = i
        dismiss(animated: true)
    }
    
    @IBAction func clickacbtn(_ sender: Any) {
        self.performSegue(withIdentifier: "one", sender: Self.self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ob = segue.destination as! secondViewController
        
        
        ob.img = image1.image
        ob.name = field.text
    }
    
    @IBAction func imgbtn_act(_ sender: Any) {
        imagepicker.sourceType = .savedPhotosAlbum
                self.present(imagepicker, animated: true)
    }
}

