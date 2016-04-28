//
//  HomeViewController.swift
//  RandomEats
//
//  Created by Jaber Janati on 4/25/16.
//  Copyright © 2016 RandomEats. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let categories = ["Asian", "Fast Food", "Lunch", "Mexican", "Breakfast", "Mediterranean Food", "Japanese", "Random", "Deserts"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if categories.count != 0 {
            return categories.count
        }
        else {
            return 0
        }
        
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MenuCollection", forIndexPath: indexPath) as! ResultsCollectionViewCell
        
        let category = categories[indexPath.row]
        cell.title.text = category
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if let cell = collectionView.cellForItemAtIndexPath(indexPath) {
            performSegueWithIdentifier("resultSegue", sender: cell)
        }
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
     
            if segue.identifier == "resultSegue" {
                let resultsViewController = segue.destinationViewController as! ResultsViewController
                let cell = sender as! UICollectionViewCell
                let indexPath = collectionView.indexPathForCell(cell)
                let cusine = categories[indexPath!.row]
                resultsViewController.category = cusine
            }
            
            else if segue.identifier == "swipeSettings" {
                print("Swipe left")
        }
        
            else if segue.identifier == "swipeFavorites" {
                print("Swipe right")
        }
       
        
        print("prepare for segue");
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
