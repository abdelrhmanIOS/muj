//
//  logout.swift
//  munjazaty
//
//  Created by obada on 12/21/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class logout: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defult = UserDefaults.standard
        defult.removeObject(forKey: "userid")
      //  dismiss(animated: true, completion: nil)
        // Do any additional setup after loading the view.
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
