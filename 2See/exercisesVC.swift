//
//  exercisesVC.swift
//  2See
//
//  Created by Xiaoyu Hu on 4/29/19.
//  Copyright © 2019 Xiaoyu Hu. All rights reserved.
//

import UIKit

var exercises = ["Tibetan Wheel", "Swinging", "Eye Stretch", "Palming", "Chart Shifting Exercise", "Energy Exercise", "String Exercise", "The Domino Exercise"]

var desc = ["Tiebetan Wheel is a exercise from the orient. Practice 3 times per day. Download the Tiebetan chart to work with it.", "Swinging requires a three yard string. Originally an exercise for Sumari of Japan. Great exercise for myopia less than 2 diopters.", "Eye stretch is the foundation for making progress with vision training. Practice 3 times per day for optimal result.", "Palming was originally introduced by Dr.William Bates. The key is to immerse your vision in complete darkness to relax your eye balls.","Chart Shifting Exercise is great for myopia between 2 to 3 diopters. Practice 3 times per day, 5 minutes each time for best results. You might combine with the energy exercise for optimal results.", "Energy Exercise is the most integral foundation for relaxing and recharging your eyes. Practice 2 hours per day.", "String Exercise is the basic foot-step exercise for vision training. Practice 10 times per day, 5 minutes each time.", "The Domino Exercise is great for myopia between 2 to 3 diopters. Practice 3-4 times per day. You might download the domino charts from website." ]

var exIndex = 0

class exercisesVC: UIViewController {

    @IBAction func exBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension exercisesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = exercises[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        exIndex = indexPath.row
        performSegue(withIdentifier: "exInfoSegue", sender: self)
    }

}

