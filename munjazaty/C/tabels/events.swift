//
//  events.swift
//  munjazaty
//
//  Created by obada on 12/19/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class events: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    @IBOutlet weak var viewofmonthes: UICollectionView!
    @IBOutlet weak var mainview: UICollectionView!
    
   /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tabel1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellaya") as! CellayaTableViewCell
            cell.place.text = "sssss"
            return cell
        }
        
        if tableView == tabel2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellaya2")
            return cell!
        }
     
        return UITableViewCell()
    }
    */
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView==mainview {
            return 20
        }
        if collectionView == viewofmonthes {
            return arrayofdate.count
        }
        return Int()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == viewofmonthes {
            let celll = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cell
            celll.label.text = arrayofdate[indexPath.row]
            celll.isSelected = true
            return celll
        }
        
        if collectionView == mainview {
        let celll = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        
        
        return celll
    
        }
     return UICollectionViewCell()
    }

    /*
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     let cell = collectionView.cellForItem(at: indexPath)
     cell?.layer.borderWidth = 2.0
     cell?.layer.borderColor = UIColor.lightGray.cgColor
     //print(cell.)
     collectionView.reloadItems(at: [indexPath])
     print(arrayofdate[indexPath.row])
     
     
     }
     */
    
    /*  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     
     let cell = collectionView.cellForItem(at: indexPath)
     cell?.layer.borderWidth = 2.0
     cell?.layer.borderColor = UIColor.gray.cgColor
     collectionView.reloadData()
     }
     */
    
    
    
    let arrayofdate = ["محرم", "صفر" ,"ربيع الأول", "ربيع الثاني","جمادي الأول" ,"جمادي الثاني","رجب ","شعبان ","رمضان ","شوال ","ذو القعدة" ," ذو الحجة"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
