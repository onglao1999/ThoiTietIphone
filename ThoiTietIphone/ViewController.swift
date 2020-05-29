//
//  ViewController.swift
//  ThoiTietIphone
//
//  Created by Ong_Lao_Ngao on 5/28/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wekdays: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var hours: UILabel!
    @IBOutlet weak var temperatureHours: UILabel!
    @IBOutlet weak var weatherHours: UIImageView!
    @IBOutlet weak var temperature1: UILabel!
    @IBOutlet weak var collectionViewTop: UICollectionView!
    @IBOutlet weak var collectionViewBottom: UICollectionView!
    var data = fakeData()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewBottom.backgroundColor = UIColor.clear
         collectionViewTop.backgroundColor = UIColor.clear
        collectionViewTop.delegate = self
        print("1")
        collectionViewTop.dataSource = self
        collectionViewBottom.delegate = self
        collectionViewBottom.dataSource = self
        collectionViewTop.showsHorizontalScrollIndicator = false
        collectionViewBottom.showsVerticalScrollIndicator = false
        if let flowLayout = collectionViewTop.collectionViewLayout as? UICollectionViewFlowLayout{
            flowLayout.scrollDirection = .horizontal
            
        }
        
        if let flowLayout = collectionViewBottom.collectionViewLayout as? UICollectionViewFlowLayout{
            flowLayout.scrollDirection = .vertical
        }
       
    }
   

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var a: Int = 0
       
        if collectionView == collectionViewTop {
            a = data[0].weatherDay.count
        }
        
        if collectionView == collectionViewBottom {
            a = data.count
        }
        return a
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewTop {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCollectionViewCell", for: indexPath) as! topCollectionViewCell
            cell.hours.text = data[0].weatherDay[ indexPath.row].hours
            cell.temperatureHours.text = data[0].weatherDay[ indexPath.row].temperature
            cell.weatherImage.image = UIImage(named: data[0].weatherDay[indexPath.row].weatherData)
            
           return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomCollectionViewCell", for: indexPath) as! bottomCollectionViewCell
            cell.weekdays.text = data[indexPath.row].day
            cell.weathherImage.image = UIImage(named: data[indexPath.row].wartherImage)
            cell.daytimeTemperature.text = data[indexPath.row].temperature2
            cell.darkTemperature.text = data[indexPath.row].temperature1
            
            return cell
        }

    }
    
    
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    // size cua collertionView
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var height: CGFloat = 0
        var width: CGFloat = 0
        if collectionView == collectionViewTop {
             height = CGFloat(collectionViewTop.bounds.height)
             width = CGFloat(50)
        }
        
         if collectionView == collectionViewBottom {
                    height = CGFloat(50)
                    width = CGFloat(collectionViewBottom.bounds.width)
               }
        
        //let width = CGFloat((view.frame.width - 20)/2)
        return CGSize(width: width, height: width)
    }
    
    // khoang cach cua cac collertionView
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    // khoang cach cua cac
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

