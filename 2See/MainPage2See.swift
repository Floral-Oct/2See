//
//  MainPage2See.swift
//  2See
//
//  Created by Xiaoyu Hu on 4/29/19.
//  Copyright © 2019 Xiaoyu Hu. All rights reserved.
//

import UIKit

class MainPage2See: UIViewController {

    @IBAction func comGoButton(_ sender: Any) {
        performSegue(withIdentifier: "comSegue", sender: self)
    }
    @IBAction func exGoButton(_ sender: Any) {
        performSegue(withIdentifier: "exerciseSegue", sender: self)
    }

    @IBAction func webGoButton(_ sender: Any) {
        performSegue(withIdentifier: "webSegue", sender: self)
    }
    @IBOutlet weak var logo2See: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
