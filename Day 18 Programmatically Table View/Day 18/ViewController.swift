//
//  ViewController.swift
//  Day 18
//
//  Created by Eth Os on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
   override func viewDidLoad() {
   super.viewDidLoad()
    //tableView code
       view.backgroundColor = .white
   let tabelView = UITableView()
   tabelView.dataSource = self
   tabelView.delegate = self
   tabelView.register(Cell.self, forCellReuseIdentifier: "cell")
   tabelView.backgroundColor = .white
   tabelView.rowHeight = 80
   tabelView.translatesAutoresizingMaskIntoConstraints = false
    //add table to view
   view.addSubview(tabelView)
    // add constraint
   NSLayoutConstraint.activate([
       tabelView.leftAnchor.constraint(equalTo: view.leftAnchor , constant: 16),
       tabelView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
       tabelView.topAnchor.constraint(equalTo: view.topAnchor , constant: 100.0),
       tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:  -16)
       ])
   }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return array.count
   }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
       let data = array[indexPath.row]
       cell.imageViewCell.image = UIImage(named: data.pic)
       cell.nameLabelCell.text = data.name
       
    cell.imageViewCell.layer.masksToBounds = true
    cell.imageViewCell.layer.cornerRadius = 40
       
    return cell
   }
  }

