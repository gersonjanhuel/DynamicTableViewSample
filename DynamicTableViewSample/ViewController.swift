//
//  ViewController.swift
//  DynamicTableViewSample
//
//  Created by Gerson Janhuel on 11/08/20.
//  Copyright © 2020 Elcode Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfContent: [String] = ["topCell", "textCell", "buttonCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 50
        
        tableView.register(UINib(nibName: "TopTableViewCell", bundle: nil), forCellReuseIdentifier: "topCell")
        tableView.register(UINib(nibName: "TableViewCellText", bundle: nil), forCellReuseIdentifier: "textCell")
        tableView.register(UINib(nibName: "TableViewCellPlusButton", bundle: nil), forCellReuseIdentifier: "buttonCell")
        
    }
    
    // UITableViewDelegate
    
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfContent.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row > 0 {
            return 60
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfContent[indexPath.row] == "topCell" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "topCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
        } else if arrayOfContent[indexPath.row] == "textCell" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "textCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
        } else if arrayOfContent[indexPath.row] == "buttonCell" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCell", for: indexPath) as! TableViewCellPlusButton
            cell.selectionStyle = .none
            cell.delegate = self
            return cell
        }
        
        // will never be called
        return UITableViewCell()
        
    }
        
    
}

extension ViewController: TableViewCellPlusButtonDelegate {
    func didTapTheButton() {
        
        arrayOfContent.insert("textCell", at: arrayOfContent.index(before: arrayOfContent.endIndex))
        
        tableView.reloadData()
    }
    
    
}

