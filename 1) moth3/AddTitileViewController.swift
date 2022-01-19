//
//  AddTitileViewController.swift
//  1) moth3
//
//  Created by my macbook on 17/1/22.
//

import Foundation
import UIKit

class AddTitileViewController: UIViewController {
    

    @IBOutlet weak var namework: UITextField!
    
    @IBAction func textField(_ sender: Any) {
       
    }
    
   
    
    @IBAction func addList(_ sender: Any) {
        let text = ListViewController()
        text.titleWork.append(namework.text ?? String())
        
       
        
        let addlist = storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        self.navigationController?.pushViewController(addlist, animated: true)
        
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
   
    
}
