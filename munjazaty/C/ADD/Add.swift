//
//  Add.swift
//  munjazaty
//
//  Created by obada on 12/19/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class Add: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var titel: UITextField!
    @IBOutlet weak var details: UITextField!
    @IBOutlet weak var ocationoutlet: UIButton!
    @IBOutlet weak var eventoutlet: UIButton!
     var imgpickerr = UIImagePickerController()
    @IBAction func occuaction(_ sender: Any) {
        if eventoutlet.isHidden  {
            eventoutlet.isHidden = false
        }else{
        eventoutlet.isHidden = true
        }
    }
    @IBAction func event(_ sender: Any) {
        if ocationoutlet.isHidden  {
            ocationoutlet.isHidden = false
        }else{
            ocationoutlet.isHidden = true
        }
    }
    @IBOutlet weak var date: UITextField!
    @IBAction func galorry(_ sender: Any) {
        let action = UIAlertController(title: "photo sourse", message: "chose", preferredStyle: .actionSheet)
        action.addAction(UIAlertAction(title: "الكاميرا ", style: .default, handler: { (action:UIAlertAction) in
            self.imgpickerr.sourceType = .camera
            self.present(self.imgpickerr, animated: true, completion: nil)
        }))
        
        action.addAction(UIAlertAction(title: "معرض الصور", style: .default, handler: { (action:UIAlertAction) in
            self.imgpickerr.sourceType = .photoLibrary
            self.present(self.imgpickerr, animated: true, completion: nil)
        }))
        imgpickerr.delegate = self
        
        action.addAction(UIAlertAction(title: "رجوع", style: .cancel, handler: nil))
        
        self.present(action, animated: true, completion: nil)
        
    }
    
    @IBAction func done(_ sender: Any) {
        
        
    }
    
}
