//
//  ViewController.swift
//  day18
//
//  Created by Macbook on 13/03/1443 AH.
//

import UIKit

 struct Contacts {
     let name: String
 }

var ite = [Contacts(name: "Hassn"),
           Contacts(name: "Fawaz"),
           Contacts(name: "Waleed"),
           Contacts(name: "Ahmad"),
           Contacts(name: "Aziz"),
           Contacts(name: "Mohammad"),
           Contacts(name: "Hadi"),
           Contacts(name: "Ali"),
           Contacts(name: "Turky"),
           Contacts(name: "Aid")]

 class VC: UIViewController , UITableViewDataSource, UITableViewDelegate {


   override func viewDidLoad() {

     super.viewDidLoad()


     let TV = UITableView()

     TV.dataSource = self
     TV.delegate = self
     TV.register(Cell.self, forCellReuseIdentifier: "cell")
     TV.backgroundColor = .black
     TV.rowHeight = 70
     TV.translatesAutoresizingMaskIntoConstraints = false

       
     view.addSubview(TV)
    
       
       
     NSLayoutConstraint.activate([TV.leftAnchor.constraint(equalTo: view.leftAnchor),
                  TV.rightAnchor.constraint(equalTo: view.rightAnchor),
                  TV.topAnchor.constraint(equalTo: view.topAnchor),
                  TV.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                   ])
   }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ite.count
   }

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let list = ite[indexPath.row]
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell

       cell.imgincell.image = UIImage(systemName: "person")
       cell.nameincell.text = list.name
      cell.imgincell.layer.masksToBounds = true
       cell.imgincell.layer.cornerRadius = 45
       return cell
   }
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         
         if editingStyle == .delete {
             ite.remove(at: indexPath.row)
             tableView.reloadData()
         }
     }
 }
   class Cell: UITableViewCell {

     let imgincell = UIImageView()
     let nameincell = UILabel()
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){


     super.init(style: style , reuseIdentifier: reuseIdentifier )

       imgincell.translatesAutoresizingMaskIntoConstraints = false

       self.addSubview(imgincell)

       NSLayoutConstraint.activate([imgincell.rightAnchor.constraint(equalTo: rightAnchor),
       imgincell.heightAnchor.constraint(equalToConstant: 80),
       imgincell.widthAnchor.constraint(equalTo: imgincell.heightAnchor,multiplier: 100/100)])
       nameincell.text = ""
       nameincell.translatesAutoresizingMaskIntoConstraints = false

       self.addSubview(nameincell)
       NSLayoutConstraint.activate(
       [nameincell.centerYAnchor.constraint(equalTo: centerYAnchor),
       nameincell.leftAnchor.constraint(equalTo: imgincell.leftAnchor , constant: -80),
       nameincell.heightAnchor.constraint(equalToConstant: 80),
       nameincell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
   }
   required init?(coder: NSCoder) {
     super.init(coder: coder)
   }
   }
