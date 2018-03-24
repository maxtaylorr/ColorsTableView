//
//  ColorsTableViewController.swift
//  ColorsTableView
//
//  Created by Max Taylor on 3/16/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let colors: [String] = ["red", "orange", "green", "blue", "purple", "brown"]
    
    let cellReuseIdentifier = "cell"
    
    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the table view cell class and its reuse id
        self.tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tableVIew.delegate = self
        tableVIew.dataSource = self
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableVIew.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = self.colors[indexPath.row]
        
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
