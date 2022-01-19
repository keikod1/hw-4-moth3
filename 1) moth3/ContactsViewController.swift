//
//  ContactsViewController.swift
//  1) moth3
//
//  Created by my macbook on 17/1/22.
//

import Foundation

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let cell = UITableViewCell()
        
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.text = "name:\(name[index]),\nphone number:\(number[index])"
        cell.textLabel?.textColor = UIColor.white
        cell.alpha = 1
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        cell.backgroundColor = UIColor.gray
        cell.alpha = 1
       
      return cell
    }
    
    var name: [String] = ["Mother","Father","Brother","Sister","Grand Mother","Grand Father","Lili","Sem","Teacher Bob","Doctor Streng","Pitter Parker","Merry Jain","Otto Octavius","Maks Dillon","Norman Ozborn","May","Kurt Konnors","Flint Marko","Eddi Brok","Flash","Ned Lids"]
    var number: [Int] = [+101293040,+106050308,+198949392,+107060504,+105030205,+106050708,+101293040,+106050308,+198949392,+107060504,+105030205,+106050708,+101293040,+106050308,+198949392,+107060504,+105030205,+106050708,+101293040,+106050308,+198949392,+107060504,+105030205,+106050708, ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
}
