//
//  SentMemesCollectionViewController.swift
//  MemeMe2.0
//
//  Created by Osmar Hernández on 20/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

private let reuseIdentifier = "memeCollectionViewCell"
private let memeDetailViewControllerIdentifier = "MemeDetailViewController"

class SentMemesCollectionViewController: UICollectionViewController {

    var memes: [Meme]! {
        return MemeSingleton.shared.memes
    }
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView.reloadData()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let space: CGFloat = 3.0
        let width = view.frame.width
        let height = view.frame.height
        let dimension = { ($0 - (2 * space)) / 3.0 }
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension(width), height: dimension(height))
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let memeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MemeCollectionViewCell
        
        memeCollectionViewCell.configureUI(meme: memes[indexPath.item])
    
        return memeCollectionViewCell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let memeDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: memeDetailViewControllerIdentifier) as! MemeDetailViewController
        
        memeDetailViewController.meme = memes[indexPath.item]
        navigationController?.pushViewController(memeDetailViewController, animated: true)
    }
}
