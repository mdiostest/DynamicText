//
//  ViewController.swift
//  Test3DynamicText
//
//  Created by MagicMind Technologies on 28/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    var lifeStyleArray = ["Variation","Perfectly","Denouncing","A large Text","Multilingual","Power of Choice"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
// MARK: - CollectionView Delegate Method
extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    
            
            return lifeStyleArray.count
            
 
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
   
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LifeStyleCollectionViewCell", for: indexPath) as! LifeStyleCollectionViewCell
            
            
            cell.lblName.text = lifeStyleArray[indexPath.item]
            
            
            return cell
  
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
 
    }
}
// MARK: - CollectionView DelegateFlowLayout Method
extension ViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout:UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LifeStyleCollectionViewCell", for: indexPath) as! LifeStyleCollectionViewCell
            
            cell.lblName.text = lifeStyleArray[indexPath.item]
            cell.setNeedsLayout()
            cell.layoutIfNeeded()
            
            let size: CGSize = cell.contentView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
            
            if size.width < 100
            {
                return CGSize(width: size.width + 25, height: 30)
            }
            else
            {
                return CGSize(width: size.width, height: 30)
            }
            
 
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0 , left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
        
    }
}

