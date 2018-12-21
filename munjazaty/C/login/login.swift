//
//  login.swift
//  munjazaty
//
//  Created by obada on 12/18/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class login: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    let defult =  UserDefaults.standard
       let url = "http://toegy.net/munjazati/api/login"
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBAction func login(_ sender: Any) {
        if  (pass.text?.isEmpty)! {
            if (mail.text?.isEmpty)! {
                let alert = UIAlertController(title: "خطا ", message: "لابد ملى الحقول", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "حسنا", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
            let alert = UIAlertController(title: "خطا", message: "تاكد من كلمه المرور", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "جسنا", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{
            
            send()
            
        }
    }
    
    
    func send() {
        guard let mai = mail.text, !(mail.text?.isEmpty)! else{return}
        guard let pas = pass.text else{return}
        let parm = [
            "email":mai ,
            "password":pas
        ]
        print(mai)
        print(pas)
        Alamofire.request(url, method: .post, parameters: parm , encoding: URLEncoding.default, headers: nil).responseJSON { re in
            switch re.result
            {
            case .failure(let erro):
                print("********////",erro)
            case .success(let value):
                let jsoncode = JSON(value)
                
                if let id = jsoncode["user"]["id"].int{
                    self.defult.setValue(id, forKey: "userid")
                    if let tybe = jsoncode["user"]["type"].string{
                        self.defult.setValue(tybe, forKey: "ty")
                        print(tybe)
                    }
                    self.dismiss(animated: true, completion: nil)
                }
                else{
                    let alert = UIAlertController(title: "Alert", message: "please check your data", preferredStyle: UIAlertController.Style.alert)
                    print(jsoncode["user"]["id"])
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
}
