//
//  newpass.swift
//  munjazaty
//
//  Created by obada on 12/18/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class newpass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var mail: UITextField!
    
    @IBOutlet weak var newpass: UITextField!
    @IBAction func applay(_ sender: Any) {
      
            
            if (mail.text?.isEmpty)!{
                if (newpass.text?.isEmpty)!{
                    let alert = UIAlertController(title: "خطا", message: "لا يمكن ترك مكان كلمه السر الجديده او البريد الالكتروني فارغا ", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }else{send()
                print("dp**********************")
            }

            
        }
    
    
    func send(){
        
        var id = mail.text
        var codee = newpass.text
        print("@@@@@@@@@@@@@@@@@@@@@@@@###############")
        let parm = [
            "email":id,
            "password" :codee
            
        ]
        
//        Alamofire.request(url, method: .post, parameters: parm, encoding: URLEncoding.default, headers: nil).responseJSON { re in
//            switch re.result
//            {
//            case .failure(let erro):
//                print("********////",erro)
//            case .success(let value):
//
//                let jsoncode = JSON(value)
//                guard let data = jsoncode["success"].int else { return }
//                if(data == 1){
//                    let alert = UIAlertController(title: "Alert", message: "this address dont exist ", preferredStyle: UIAlertController.Style.alert)
//                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//                    self.present(alert, animated: true, completion: nil)
//
//                }else{
//                    self.performSegue(withIdentifier: "done", sender: nil)
//                }
//
//
//
//
//            }
//        }
//
        
    }


}
