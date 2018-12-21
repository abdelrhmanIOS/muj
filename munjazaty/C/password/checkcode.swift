//
//  checkcode.swift
//  munjazaty
//
//  Created by obada on 12/18/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class checkcode: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var code: UITextField!
    @IBOutlet weak var mail: UITextField!
    @IBAction func chechcode(_ sender: Any) {
       
        if (mail.text?.isEmpty)!{
            if (code.text?.isEmpty)!{
                let alert = UIAlertController(title: "خطا ", message: "لا يمكن ترك مكان الكود او البريد الالكتروني فارغا ", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "حسنا", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }else{send()
            
        }
        
        
        
    }
    func send(){
        
        var id = mail.text
        var codee = code.text
        print("@@@@@@@@@@@@@@@@@@@@@@@@###############")
        let parm = [
            "email":id,
            "code" :codee
            
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
//                    self.performSegue(withIdentifier: "last", sender: nil)
//                }
//            }
//        }
        performSegue(withIdentifier: "checkcode", sender: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
