//
//  DetailedViewController.swift
//  LearningApp
//
//  Created by Jo on 07/03/23.
//

import UIKit
import MBCircularProgressBar

class DetailedViewController: UIViewController {
    
// MARK: - OUTLETS
    
    @IBOutlet var viewbase: UIView!
    @IBOutlet var Tbl: UITableView!
    @IBOutlet var roundpro: MBCircularProgressBarView!
    @IBOutlet var lblcount: UILabel!
    @IBOutlet var lblhead: UILabel!
  
    
// MARK: - VARIABLES
    
    var num = 0
    var name = String()
    var name2 = String()
    
    var tblchapter = ["Chapter 1","Chapter 2","Chapter 3","Chapter 4","Chapter 5","Chapter 6","Chapter 7","Chapter 8","Chapter 9","Chapter 10"]
    
    var tblsubhead = ["Introduction","School","Jobs","Job Interviews","University","Marks", "Score", "Certification","Place","Company"]
    
    var tblscores = ["40%","50%","80%","30%","70%","90%","100%","25%","36%","50%"]
    
    
    var clcpic = ["Grammer","Dictionary","Task","Listening","Words","Writer"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewbase.layer.cornerRadius = 100
        viewbase.layer.maskedCorners = .layerMaxXMaxYCorner
        
        Tbl.separatorColor = .purple
     
        lblcount.text = name
        lblhead.text = name2
        progres()
        progresAttribute()
        Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(progres), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
        
    }
  
// MARK: - PROGRESSVIEW FUNCTIONS
    

    @objc   func progres(){
        
        if name == "1"{

            if num  < 40 {
                num += 1
                roundpro.value = CGFloat(num)
//                print(num)
            }
        }else if name == "2"{

            if num  < 50 {
                num += 1
                roundpro.value = CGFloat(num)
                
            }
        }else if name == "3"{

            if num  < 60 {
                num += 1
                roundpro.value = CGFloat(num)
                
            }
        }else if name == "4"{

            if num  < 70 {
                num += 1
                roundpro.value = CGFloat(num)
                
            }
        }else{

            if num  < 80 {
                num += 1
                roundpro.value = CGFloat(num)
                
            }
        }
    }
    
    
    func progresAttribute(){
     
        
        roundpro.maxValue = 100
        roundpro.progressAngle = 100
        roundpro.progressColor = .white
        roundpro.progressLineWidth = 2
        roundpro.fontColor = .white
        roundpro.valueFontSize = 15
    }
   
// MARK: - Navigation
    
    @IBAction func btnBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

// MARK: -  EXTENSION - TABLEVIEW

extension DetailedViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tblchapter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedTableViewCell", for: indexPath) as! detailedTableViewCell
        cell.lblchapter.text = tblchapter[indexPath.row]
        cell.lbltitele.text = tblsubhead[indexPath.row]
        cell.lblmark.text = tblscores[indexPath.row]
        
        return cell
    }
    
    
}

// MARK: -  EXTENSION - COLLECTIONVIEW

extension DetailedViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clcpic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailedCollectionViewCell", for: indexPath) as! detailedCollectionViewCell
        cell.layer.cornerRadius = 20
        cell.imgpng.image = UIImage(named: clcpic[indexPath.row])
        cell.lblname.text = clcpic[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: 130, height: 155)
        CGSize(width: 120, height: 145)

    }
    
}
