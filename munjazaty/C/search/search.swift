//
//  search.swift
//  munjazaty
//
//  Created by obada on 12/21/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class search: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    var searches = [result]()
    @IBOutlet weak var name: UITextField!
    let url = "http://toegy.net/munjazati/api/search_by_title"
    @IBAction func done(_ sender: Any) {
        send()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? resultVC {
            viewControllerB.name = name.text!}
        }
    func send() {
        
        let parm = [
            "title": name.text as! String        ]
        
        Alamofire.request(url, method: .post, parameters: parm , encoding: URLEncoding.default, headers: nil).responseJSON { re in
            switch re.result
            {
            case .failure(let erro):
                print("********////",erro)
            case .success(let value):
                var jsoncode = JSON(value)
                guard let data = jsoncode["success"].string else {return}
                if data == "0"{
                    let alert = UIAlertController(title: "نتايج البحث", message: "لايوجد شي مماثل  ", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    
                }
                else{
                   self.performSegue(withIdentifier: "give", sender: nil)

                    }
                }
            }
        }
    }

