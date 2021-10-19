//
//  ViewController.swift
//  Day18-Lab1-Afnan
//
//  Created by Fno Khalid on 13/03/1443 AH.
//

import UIKit

struct call {
    let personimage: String
    let personname: String
}

var CallList = [
    call(personimage: "girl", personname: "Hanan"),
    call(personimage: "girl1", personname: "Sara"),
    call(personimage: "boy", personname: "Ahmad"),
    call(personimage: "girl2", personname: "Atheer"),
    call(personimage: "boy1", personname: "Waleed"),
    call(personimage: "girl3", personname: "Sana"),
    call(personimage: "boy2", personname: "Mohammed")

]

var Names: Array<call> = [ ]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Names: Array<call> = [ ]
    
    let tableView: UITableView = {
        
        let table = UITableView()
        let tabelView = UITableView()
            tabelView.backgroundColor = .white
            tabelView.rowHeight = 80
            tabelView.translatesAutoresizingMaskIntoConstraints = false

        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
    }()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CallList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        let List = CallList[indexPath.row]
       
        cell.imagecell.image = UIImage(named: List.personimage)
        cell.namecell.text = List.personname
       
        return cell
    }

}
    



