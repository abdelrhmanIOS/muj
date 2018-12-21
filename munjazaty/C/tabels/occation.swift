//
//  occation.swift
//  munjazaty
//
//  Created by obada on 12/19/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class occation: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var viewofmonthes: UICollectionView!
    @IBOutlet weak var mainview: UICollectionView!
    
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
    
    let arrayofdate = ["محرم", "صفر" ,"ربيع الأول", "ربيع الثاني","جمادي الأول" ,"جمادي الثاني","رجب ","شعبان ","رمضان ","شوال ","ذو القعدة" ," ذو الحجة"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
