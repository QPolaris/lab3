//
//  ViewController.swift
//  CS422L
//
//  Created by Jonathan Sligh on 1/29/21.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {

    var sets: [FlashcardSet] = [FlashcardSet]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    @IBAction func addButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //connect hard coded collection to sets
        collectionView.delegate = self
        collectionView.dataSource = self
        sets = FlashcardSet.getHardCodedCollection()
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return number of items
        return sets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SetCell", for: indexPath) as! FlashcardSetCollectionCell
        //setup cell display here
        cell.textLabel.text = sets[indexPath.row].title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //go to new view
        performSegue(withIdentifier: "GoToDetail", sender: self)
        
    }
}

