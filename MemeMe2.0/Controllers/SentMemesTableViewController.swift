//
//  SentMemeTableViewController.swift
//  MemeMe2.0
//
//  Created by Osmar Hernández on 20/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

private let reuseIdentifier = "memeTableViewCell"
private let memeDetailViewControllerIdentifier = "MemeDetailViewController"

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let memeTableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! MemeTableViewCell
        
        memeTableViewCell.configureUI(meme: memes[indexPath.row])
        
        return memeTableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: memeDetailViewControllerIdentifier) as! MemeDetailViewController
        
        memeDetailViewController.meme = memes[indexPath.row]
        navigationController?.pushViewController(memeDetailViewController, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110.0
    }
}
