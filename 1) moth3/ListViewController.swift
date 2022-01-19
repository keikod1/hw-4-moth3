//
//  ListViewController.swift
//  1) moth3
//
//  Created by my macbook on 17/1/22.
//

import Foundation
import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return number.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        let cell = UITableViewCell()
  
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        cell.textLabel?.text = "№\(number[index]) \t\(titleWork[index]), \nдата задачи: \t\(dateWork[index])"
        cell.backgroundColor = UIColor.systemBackground
       
    
        return cell
    }
    
   
    var number: [String] = []
    var titleWork: [String] = []
    var dateWork: [String] = []
    
    var value = 0
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func textField(_ sender: Any) {
    }
    
    @IBAction func dateWorkField(_ sender: Any) {
    }
    
    @IBOutlet weak var todoTableView: UITableView!
    
   
    @IBOutlet weak var dateworks: UITextField!
    
   
    
    @IBAction func clickView(_ sender: Any) {
        value = value + 1
        
        titleWork.append(textField.text!)
        dateWork.append(dateworks.text!)
        number.append("\(value)")
        
        todoTableView.reloadData()
    }
    
   
    @IBAction func deleteText(_ sender: Any) {
    }
    
    
    @IBOutlet weak var removeText: UITextField!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func deleteTap(_ sender: UIButton) {
        if let index = number.firstIndex(of: removeText.text!) {
            number.remove(at: index)
            
        }else {
            let alert = UIAlertController(title: "Error", message: "задача не найдена", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        todoTableView.reloadData()
      
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTableView.dataSource = self
    }
    
    
  
}
