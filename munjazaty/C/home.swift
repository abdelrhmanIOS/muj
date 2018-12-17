//
//  home.swift
//  munjazaty
//
//  Created by obada on 12/12/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit


class home: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
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
        
        
        //let cellaya = tabel1.dequeueReusableCell(withIdentifier: "cellaya", for: indexPath)as! CellayaTableViewCell
        //cellaya.titel.text = "kkkklkl"
        return UITableViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayofdate.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celll = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cell
        celll.label.text = arrayofdate[indexPath.row]
        celll.isSelected = true
        
        
        return celll
    }
    @IBOutlet weak var tabel1: UITableView!
    @IBOutlet weak var tabel2: UITableView!
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
        swipscroll()
       
        
        
        
        // Do any additional setup after loading the view.
    }
    
    var i = 0
    @IBAction func back(_ sender: Any) {
    i=i+1
        if i >= imgarr.count {
            i=0
        }
        swipscroll()
    }
    
    @IBAction func FORWARD(_ sender: Any) {
    
    i=i-1
        if i == 0 {
            i=imgarr.count        }
        swipscroll()
    }
    /*
     
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var image: UIImageView!
    var imgarr = [UIImage()]
    func swipscroll() {
        
       
        imgarr = [#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "img"),#imageLiteral(resourceName: "logo")]
        image.image = imgarr[i]
       
    }
}
