//
//  ViewController.swift
//  shoppinglist
//
//  Created by Molina, Yadira - Student on 1/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tablView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tablView.dequeueReusableCell(withIdentifier: "celid", for: indexPath)
        let currentItem = item[indexPath.row]
        cell.textLabel?.text = currentItem.name
cell.detailTextLabel?.text = "Quantity: \(currentItem.q qty)"
        
         return cell
    }
    
    var item : [Item] = []
    @IBOutlet weak var tablView: UITableView!
    
    @IBOutlet weak var newitemtextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tablView.dataSource = self
        let Item1 = Item(name:"grapes", qty: 2 )
        let Item2 = Item(name:"water", qty: 2)
        item = [Item1,Item2]
    }
    func tableView(_ tablView: UITableView,numberOfRowsInSection section:Int ) -> Int
    {
        return item.count
        
        
    }
    
    //        func tableView(_tableView: UITableView, cellFowRowAt inexPath)->
    //    }
    //
    
    
    @IBAction func rita(_ sender: Any) {
        
        if let newItemName = newitemtextfield.text{
            let newItem = Item(name: newItemName, qty: 2)
            item . append(newItem)
            tablView.reloadData()
            
        }
        
          
        
        
        
        
        
        
        
        
        
    }
    
}
