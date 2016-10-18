//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Rick Wolchuk on 10/4/16.
//  Copyright © 2016 rickwolchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var cooliotableview: UITableView!

    var emojis = ["😎","🍻","🤑","💩","😂","👠","🐹","🌧","🏂","❤️","🇩🇪","♼","🇬🇷","📌","🚑"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        cooliotableview.dataSource = self
        cooliotableview.delegate = self
    }

    func tableView(_ tableView: UITableView,
    numberOfRowsInSection section: Int) -> Int {
    return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

