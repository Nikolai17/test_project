//
//  FirstViewController.swift
//  test_project2
//
//  Created by macOS on 20.04.19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit


var data:[String]=["Заметка 1"," Заметка 2","Заметка 3","Заметка 4 ","Заметка 5"]

class FirstViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
    
     @IBOutlet weak var tableView: UITableView!
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    return data.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
      let cell=tableView.dequeueReusableCell(withIdentifier: "Celld", for: indexPath)
        
        
        cell.textLabel?.text=data[indexPath.row]
        return cell
      
    
        
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        	tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    
    
    {
    
    if editingStyle==UITableViewCellEditingStyle.delete
    {
       data.remove(at: indexPath.row)
        tableView.reloadData()
        }
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

