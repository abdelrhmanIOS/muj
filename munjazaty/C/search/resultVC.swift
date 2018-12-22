//
//  resultVC.swift
//  munjazaty
//
//  Created by obada on 12/14/18.
//  Copyright © 2018 obada. All rights reserved.
//
import SwiftyJSON
import Alamofire
import UIKit
import Kingfisher

class resultVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var nameofresoult: UILabel!
    @IBOutlet weak var collection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celll = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cellofresult
        celll.titel.text = searches[indexPath.row].titel
        celll.date.text = searches[indexPath.row].date
        celll.place.text = searches[indexPath.row].location
        let resourpic = NSURL(string: searches[indexPath.row].logo)
        let resournewpic = ImageResource(downloadURL: resourpic as! URL)
        
        celll.img.kf.setImage(with: resournewpic)
        
        celll.isSelected = true
        celll.layer.cornerRadius = 20
        
        return celll
    }
    let url = "http://toegy.net/munjazati/api/search_by_title"
var searches = [result]()
    override func viewDidLoad() {
        super.viewDidLoad()
        nameofresoult.text = name
        send()
        // Do any additional setup after loading the view.
    }
    var name = ""

    
    func send() {
        
        let parm = [
            "title":name
        ]
        
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
                    guard let data = jsoncode["data"].array else {return}
                    for ofeers in data{
                        if let dataa = ofeers.dictionary,let trip = result.init(dict:dataa){
                            
                            
                            self.searches.append(trip)
                            print("done")
                            self.collection.reloadData()
                        }else{print("ggggggggggggogoggoggg")}
                        self.collection.reloadData()
                        
                        
                        
                        /*
                         trip.date = (ofeer["date"].string)!
                         trip.logo = (ofeer["logo"].string)!
                         trip.photo = (ofeer["photo"].string)!
                         trip.price = (ofeer["price"].int)!
                         */
                        
                        
                    }
                }
            }
        }
    }
    

}
