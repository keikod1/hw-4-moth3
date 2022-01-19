//
//  NameViewController.swift
//  1) moth3
//
//  Created by my macbook on 19/1/22.
//

import Foundation
import UIKit

class NameViewController: UIViewController, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = UITableViewCell()
        
        cell.textLabel?.numberOfLines = 3
        cell.textLabel?.text = " №\(number[index]): \(names[index]), \n\(work[index])"
        cell.backgroundColor = UIColor.gray
    
        return cell
        
    }
    
    @IBAction func removeFill(_ sender: Any) {
    }
    
    @IBOutlet weak var tableViewName: UITableView!
    
    @IBOutlet weak var removeText: UITextField!
    
    @IBAction func addWork(_ sender: Any) {
    }
    
    @IBOutlet weak var workText: UITextField!
    @IBOutlet weak var remove: UIButton!
    
    @IBAction func removeName(_ sender: Any) {
        
        if let index = number.firstIndex(of: removeText.text!) {
            number.remove(at: index)
            
            

        }else {
            let alert = UIAlertController(title: "Error", message: "задача не найдена", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        tableViewName.reloadData()
    }
    
    
    @IBAction func searchField(_ sender: Any) {
    }
    @IBOutlet weak var searchText: UITextField!
    
    @IBAction func clickSearch(_ sender: Any) {
        
        if let index = names.firstIndex(of: searchText.text!){
            let alert = UIAlertController(title: "список имен и дел", message: "такой файл уже существует!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            
            value = value + 1
            
            names.append(searchText.text!)
            work.append(workText.text!)
            number.append("\(value)")
        }
        tableViewName.reloadData()
    }
    
    var value = 0
    
    var number: [String] = []
    
    var names: [String] = []
    
    var work: [String] = []
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewName.dataSource = self

    }
    

   
}
