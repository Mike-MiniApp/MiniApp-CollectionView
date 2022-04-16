//
//  ViewController.swift
//  MiniApp-CollectionView
//
//  Created by 近藤米功 on 2022/04/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    var prefectureArray: [String] = ["東京都","北海道","岩手県","宮城県","秋田県","山形県","栃木県","群馬県","埼玉県","神奈川県","新潟県","東京都","北海道","岩手県","東京都","北海道","岩手県","宮城県","秋田県","山形県","栃木県","群馬県","埼,玉県","神奈川県","新潟県","東京都","北海道","岩手県","東京都","北海道","岩手県","宮城県","秋田県","山形県","栃木県","群馬県","埼玉県","神奈川県","新潟県","東京都","北海道","岩手県"]
    var nowIndex: Any = 0
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VC2Segue" {
            let vc2 = segue.destination as! ViewController2
            vc2.catchPrefectureName = prefectureArray[nowIndex as! Int]
        }
    }
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return prefectureArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewID", for: indexPath) as! PrefectureCollectionViewCell
        cell.prefectureLabel.text = prefectureArray[indexPath.row]
        nowIndex = indexPath.row
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
      return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let horaizenSpace:CGFloat = 20
        let cellSizeWidth:CGFloat = self.view.frame.width/3 - horaizenSpace*2
        return CGSize(width: cellSizeWidth, height: cellSizeWidth)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nowIndex = indexPath.row
        performSegue(withIdentifier: "VC2Segue", sender: nil)
    }


}

