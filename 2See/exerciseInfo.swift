//
//  exerciseInfo.swift
//  2See
//
//  Created by Xiaoyu Hu on 4/29/19.
//  Copyright © 2019 Xiaoyu Hu. All rights reserved.
//

import UIKit

class exerciseInfo: UIViewController {

    @IBOutlet weak var exName: UILabel!
    @IBOutlet weak var exDemo: UIImageView!
    @IBOutlet weak var exInstruction: UITextView!
    
    @IBAction func exInfoBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exName.text = exercises[exIndex]
        exInstruction.text = desc[exIndex]
        exDemo.image = UIImage(named: exercises[exIndex] + ".jpg")
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
}
