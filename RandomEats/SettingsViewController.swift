//
//  SettingsViewController.swift
//  RandomEats
//
//  Created by Maliha Fairooz on 4/25/16.
//  Copyright © 2016 RandomEats. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var Single: UIButton!
    
    @IBOutlet weak var double: UIButton!
    
    @IBOutlet weak var Ballin: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    /*Business.searchWithTerm("Restaurant", latitude: 37.721839, longitude: -122.476927, sort: .Distance, categories: [], deals: false, offset: nil, limit: 20, completion: { (businesses: [Business]!, error: NSError!) -> Void in
    self.businesses = businesses
 
    
    //self.filteredBusinesses = self.businesses
    self.tableView.reloadData()
    })
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? data : data.filter({(dataString: String) -> Bool in
            return dataString.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil
        })
        
    }
    
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            filteredData = data
        } else {
    
            filteredData = data.filter({(dataItem: String) -> Bool in
                
                if dataItem.rangeOfString(searchText, options: .CaseInsensitiveSearch) != nil {
                    return true
                } else {
                    return false
                }
            })
        }
 */
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
