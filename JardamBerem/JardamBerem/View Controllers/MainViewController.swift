//
//  MainViewController.swift
//  JardamBerem
//
//  Created by Baha Ganyev on 29.07.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: Properties
    let images = [#imageLiteral(resourceName: "img0"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img4"),#imageLiteral(resourceName: "img5"),#imageLiteral(resourceName: "img6"),#imageLiteral(resourceName: "img7")]
    override func viewDidLoad() {
        super.viewDidLoad()

        if let layout = collectionView.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }

}

//MARK: Flow Layout Delegate

extension MainViewController: PinterestLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        let image = images[indexPath.item]
        let height = image.size.height
        return height
    }

}

//MARK: Data Source
extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photocell", for: indexPath) as! MainCell
        let image = images[indexPath.item]
        cell.imgView.image = image
        return cell
    }
    
}
