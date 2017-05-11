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
        
        // deselects the row when returning the main view controller
        tableView.deselectRow(at: indexPath, animated: true)
        
        //creates a constant from the array that will be passed as the sender in performSegue
        let emoji = emojis[indexPath.row]
        
        // perform segue
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    // function gets run right before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // hold the view controller for DefinitionViewController
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

