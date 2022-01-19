//
//  ViewController.swift
//  1) moth3
//
//  Created by my macbook on 17/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Click(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ContactsViewController") as! ContactsViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func todoClick(_ sender: Any) {
        let controller2 = storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        self.navigationController?.pushViewController(controller2, animated: true)
    }
    
    @IBAction func namesList(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "Name") as! NameViewController
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

