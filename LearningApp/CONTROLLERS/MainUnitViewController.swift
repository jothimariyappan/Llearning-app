//
//  MainUnit.swift
//  LearningApp
//
//  Created by Jo on 07/03/23.
//

import UIKit

class MainUnitViewController: UIViewController {
    
// MARK: -  OUTLETS
    
    @IBOutlet var imgsplash2: UIImageView!
    @IBOutlet var imgOL: UIImageView!
    @IBOutlet var Tbl: UITableView!
    
    var num1 = 0
    var num2 = 0
    var num3 = 0
    var num4 = 0
    var num5 = 0
    
    var units = [1,2,3,4,5]
    var subtitle = ["Introduction","Jobs and school", "Food and drinks","Place and direction" ,"Lifestyle"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgsplash2.layer.cornerRadius = 100
        imgsplash2.layer.maskedCorners = .layerMaxXMaxYCorner
        imgOL.layer.cornerRadius = 100
        imgOL.layer.maskedCorners = .layerMaxXMaxYCorner
        Tbl.reloadData()
        Tbl.separatorColor = .white
        
// MARK: -  Timer
        
        Timer.scheduledTimer(timeInterval: 0.04, target: self, selector: #selector(progres), userInfo: nil, repeats: true)
    }
 
   
    
        @objc func progres(){

            DispatchQueue.main.async { [self] in
                if num1  < 30 {
                    num1 += 1
                }
                if num2 < 50{
                    num2 += 1
                }
                if num3 < 60{
                    num3 += 1
                }
                if num4 < 70{
                    num4 += 1
                }
                if num5 < 80{
                    num5 += 1
                    }
                    
                }
                Tbl.reloadData()
            }
         
        
 
// MARK: -  NAVIGATION
    
    @IBAction func btnback(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
   

}
// MARK: -  EXTENSION = TABLEVIEW

extension MainUnitViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let unit = tableView.dequeueReusableCell(withIdentifier: "MainunitTableViewCell", for: indexPath) as! MainunitTableViewCell
        
        unit.lblindex.text = "\(units[indexPath.row])"
        unit.lblsubhead.text = subtitle[indexPath.row]
       
        if indexPath.row == 0{
            unit.Progressview.value = CGFloat(num1)
        }else if indexPath.row == 1{
            unit.Progressview.value = CGFloat(num2)
        }else if indexPath.row == 2{
            unit.Progressview.value = CGFloat(num3)
        }else if indexPath.row == 3{
            unit.Progressview.value = CGFloat(num4)
        }else{
            unit.Progressview.value = CGFloat(num5)
        }
        
        if indexPath.row % 2 == 1{
            
            unit.Viewbase.layer.backgroundColor = (#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))
        }
        
        return unit
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nav = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController
        
        nav.name = "\(units[indexPath.row])"
        nav.name2 = subtitle[indexPath.row]
        
        self.navigationController?.pushViewController(nav, animated: true)
    }
}

