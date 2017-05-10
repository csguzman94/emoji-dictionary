//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Cody Guzman on 5/9/17.
//  Copyright © 2017 Cody Guzman. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // tableview outlet
    @IBOutlet weak var tableview: UITableView!
    
    
    // emoji array
    var emojis = ["😊","😎","🤑","😡","😈","😷"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set tableview declarations
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    // function for the number of cells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // returns the size of the emojis array
        return emojis.count
    }
    
    
    
    // function that declares whats in each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // creates a let constant for each of the cells
        let cell = UITableViewCell()
        
        
        //insert cell text to each cell
        //indexPath.row - pulls each element from the list
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }

    
    // function to move to second screen
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        // perform segue
        performSegue(withIdentifier: "moveSegue", sender: "🏈")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

