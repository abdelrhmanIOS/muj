//
//  callender.swift
//  munjazaty
//
//  Created by obada on 12/12/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class callender: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellaya = tableView.dequeueReusableCell(withIdentifier: "cellaya", for: indexPath)
        return cellaya
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.calendar = Calendar(identifier: .islamicUmmAlQura)
       
        
        // Do any additional setup after loading the view.
    }
   
    @IBOutlet weak var picker: UIDatePicker!
    @IBAction func pic(_ sender: Any) {
       print(picker.date)
    }
    @IBOutlet weak var tabelV: UITableView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
