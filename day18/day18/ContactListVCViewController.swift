//
//  ContactListVCViewController.swift
//  day18
//
//  Created by dmdm on 19/10/2021.
//

import UIKit

class ContactListVCViewController: UIViewController {
    
    var tableView = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 100
        tableView.pin(to: view )
    }
     
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}
extension ContactListVCViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
