//
//  return_password.swift
//  munjazaty
//
//  Created by obada on 12/18/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class return_password: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    let url = "http://toegy.net/munjazati/api/sendmail"
    @IBOutlet weak var email: UITextField!
    @IBAction func chechmail(_ sender: Any) {
        if (email.text?.isEmpty)!{
            let alert = UIAlertController(title: "خطا", message: "لابد من وجود ايميل لاستعاده كلمه المرور ", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "حسنا", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }else{send()}
       
        
    }
   
    func send(){
        
        let id = email.text
        let parm = [
            "email":id
        ]
       
        Alamofire.request(url, method: .post, parameters: parm as Parameters, encoding: URLEncoding.default, headers: nil).responseJSON { re in
            switch re.result
            {
            case .failure(let erro):
                print("********////",erro)
            case .success(let value):

                let jsoncode = JSON(value)
                guard let data = jsoncode["success"].int else { return }
                if(data == 1){
                    let alert = UIAlertController(title: "Alert", message: "this address dont exist ", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)

                }else{
                    self.performSegue(withIdentifier: "Checkcode", sender: nil)
                }
            }
        }

    }


}
