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
        cell.textLabel?.text = "hello"
      return cell
    }
    
    var item : [Item] = []
    @IBOutlet weak var tablView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tablView.dataSource = self
    let Item1 = Item(name:"grapes")
    let Item2 = Item(name:"water")
        item = [Item1,Item2]
}
    func tableView(_ tablView: UITableView,numberOfRowsInSection section:Int ) -> Int
    {
        return item.count
        
        
    }
      
//        func tableView(_tableView: UITableView, cellFowRowAt inexPath)->
//    }
//
    
    
    
    
    
    
    
    
    
    

}

