//
//  FlashCardDetailViewController.swift
//  CS422L
//
//  Created by Student Account  on 1/28/22.
//

import UIKit

class FlashCardDetailViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    var sets: [Flashcard] = [Flashcard]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sets.count
    }
    
    @IBOutlet weak var d: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "SetCell", for: indexPath) as! FlashcardCollectionCell
        cell.textLabel!.text = sets[indexPath.row].term
        return cell
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
    }
    
    @IBAction func studyClicked(_ sender: Any) {
    }
    
    @IBAction func addClicked(_ sender: Any) {
        sets.append(Flashcard())
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        sets = Flashcard.getHardCodedFlashcards()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
