//
//  ViewController.swift
//  LearningApp
//
//  Created by Jo on 07/03/23.
//

import UIKit

class ViewController: UIViewController {
    
// MARK: - OUTLETS
    
    @IBOutlet var imgsplash: UIImageView!
    @IBOutlet var imgcolorOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgsplash.layer.cornerRadius = 150
        imgsplash.layer.maskedCorners = .layerMaxXMaxYCorner
        imgcolorOL.layer.cornerRadius = 150
        imgcolorOL.layer.maskedCorners = .layerMaxXMaxYCorner
        // Do any additional setup after loading the view.
    }

// MARK: -  NAVIGATION
    
    @IBAction func btnstart(_ sender: UIButton) {
        
        let nav = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainUnitViewController") as! MainUnitViewController

        self.navigationController?.pushViewController(nav, animated: true)
    }
}

