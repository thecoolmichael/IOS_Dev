//
//  ColorsViewController.swift
//  Colors
//
//  Created by Michael  Douglas on 10/20/17.
//  Copyright © 2017 Michael Douglas. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var colorsTableView: UITableView!
    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    var backgroundColor = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func numberOfSection(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Color", for: indexPath)
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = backgroundColor[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
            let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.colorNames = colors[row]
            destination.backgroundColor = backgroundColor[row]
        }
        
    }

  

}
