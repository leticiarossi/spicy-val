//
//  ViewController.swift
//  SpicyVal
//
//  Created by Leticia Rossi on 6/18/15.
//  Copyright (c) 2015 Leticia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var SegControl: UISegmentedControl!
    
    @IBOutlet weak var tabV2: UITableView!
    @IBOutlet weak var tabV: UITableView!
    
    let spicyFood = [ ("Quesadillas", "💀💀💀"), ("Buffalo Wings", "💀💀💀"), ("Philly Cheesetake (w/ yellow thing)", "💀💀"), ("Sirloin Tips with Roasted Mushrooms", "💀💀"), ("Turkey Chili", "💀💀"), ("Grilled Flank Steak", "💀💀"), ("Southwestern Chicken", "💀💀"), ("Sri Lanka Yoghurt Chicken", "💀💀"), ("Chicken Breast (from light side)", "💀.5"), ("Porcini Sauce", "💀"), ("Portabello & Vegetable Gyro", "💀"), ("Flat Iron Steak", "0.5"), ("Beef with Broccoli", "0.5"), ("Pork Ribs with Char Sui Sauce", "0.5"), ("Fried Catfish Sandwich", "0.5"), ("Blackened Catfish", "0.5"), ("Cuban Sandwich (sauce)", "~0.5"), ("General Tso's Chicken", "~0.5") ]
    
    let notSpicy = [("Sesame Wings"," "), ("BBQ Wings"," "), ("Corn/Garlic Wings (farofa)","❤️"), ("Creole Chicken"," "), ("Apricot Stuffed Chicken Breast","❤️"), ("Honey Lavender Roasted Chicken"," "), ("Rosemary Roasted Potatoes"," "), ("Roasted Chicken with Lemon and Thyme"," "), ("Southern Fried Chicken", "~0.5"), ("Steakhouse Sandwich"," "), ("Teriyaki Breast of Chicken"," "), ("Pineapple Fried Rice"," "), ("Turkey Pot Pie"," "), ("Chicken Broccoli Al Fredo"," "), ("Arctic Char"," "), ("Ale Braised Beef Short Ribs"," "), ("Turkey Sausage Patty (egg)"," "), ("Yankee Pot Roast"," "), ("New England Baked Haddock", "~"), ("Chicken Shawarma"," "), ("Chicken Enchilada Casserole"," ")]

        
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tabV {
            return spicyFood.count
        }
        else{
            return notSpicy.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if tableView == self.tabV {
            var cell = self.tabV.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
            
            let (spicyName, spicyRanking) = self.spicyFood[indexPath.row]
        
            cell.textLabel?.text = spicyName
            cell.detailTextLabel?.text = spicyRanking
            
            return cell
        }
        else {
            var cell2 = self.tabV2.dequeueReusableCellWithIdentifier("cell2", forIndexPath: indexPath) as! UITableViewCell
            
            let (notSpicyName, heart) = self.notSpicy[indexPath.row]
            
            cell2.textLabel?.text = notSpicyName
            return cell2
        }
    }
    
    @IBAction func changeTab(sender: AnyObject) {
        
        if SegControl.selectedSegmentIndex == 0 {
            tabV.hidden = false
            tabV2.hidden = true
        }
        
        if SegControl.selectedSegmentIndex == 1 {
            tabV.hidden = true
            tabV2.hidden = false
        }
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

