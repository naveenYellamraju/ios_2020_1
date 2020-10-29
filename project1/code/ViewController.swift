//
//  ViewController.swift
//  code
//
//  Created by Naveen Yellamraju on 28/10/20.
//  Copyright © 2020 naveen. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    //MARK:- Properties

    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var popupViw: UIView!
   
    
    // also enter this string as the cell identifier in the storyboard
    
    let reuseIdentifier = "cell"
    
    //MARK:- Array of images to display in Collectionview
    
    var items = ["1","2","1","2","1","2","1","2","1","2","1","2","1","2"]

    //MARK:- ViewLifeCycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    profileImg.layer.cornerRadius = profileImg.frame.height/2
    popupViw.layer.cornerRadius = 8
        

    }

    
   
    
    //MARK:- Handling popup menu Actions

    @IBAction func menuButton(_ sender: Any) {
        
        popupViw.alpha = 1
        
    }
    
    @IBAction func shareButton(_ sender: Any) {
        
        popupViw.alpha = 0

    }
    
    @IBAction func reportButton(_ sender: Any) {
        
        popupViw.alpha = 0

    }
    

}

//MARK:- Extension Collectionview Delegate and Datasource Methods


extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
              return self.items.count
    }
          
    // make a cell for each cell index path
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              
    // get a reference to our storyboard cell
        
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
              
    // Use the outlet in our custom class to get a reference to the UIImage in the cell
        
    cell.imgViw.image = UIImage(named: items[indexPath.item])
        
    return cell
    }
    
}
