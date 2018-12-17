//
//  resultVC.swift
//  munjazaty
//
//  Created by obada on 12/14/18.
//  Copyright © 2018 obada. All rights reserved.
//

import UIKit

class resultVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10   
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celll = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        celll.isSelected = true
        celll.layer.cornerRadius = 20
        
        return celll
    }
    

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
