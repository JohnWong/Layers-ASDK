//
//  ViewController.swift
//  Layers
//
//  Created by René Cacheaux on 9/1/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class RainforestOriginalViewController: UICollectionViewController {
  let rainforestCardsInfo = getAllCardInfo()
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fpsLabel = YYFPSLabel(frame: CGRect(x: 16, y: self.view.frame.size.height - 30 - self.tabBarController!.tabBar.frame.size.height, width: 0, height: 0))
    self.view .addSubview(fpsLabel)
  }
  
  override func collectionView(collectionView: UICollectionView,
      numberOfItemsInSection section: Int) -> Int {
    return rainforestCardsInfo.count
  }
  
  override func collectionView(collectionView: UICollectionView,
      cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! RainforestOriginalCardCell
    let cardInfo = rainforestCardsInfo[indexPath.item]
    cell.configureCellDisplayWithCardInfo(cardInfo)
    return cell
  }
}
