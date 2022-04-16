//
//  ViewController2.swift
//  MiniApp-CollectionView
//
//  Created by 近藤米功 on 2022/04/16.
//

import UIKit

class ViewController2: UIViewController {
    var catchPrefectureName: String = ""
    @IBOutlet var prefectureLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        prefectureLabel.text = catchPrefectureName
    }

}
