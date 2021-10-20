//
//  ViewController.swift
//  Day18N
//
//  Created by Me .. on 14/03/1443 AH.
//

import UIKit
 struct Arr {
  let name: String
  let image: String
 }
 let Contacts =
  [
   Arr(name: "Sana", image: "1"),
   Arr(name: "Maram", image: "2"),
   Arr(name: "Khloud", image: "3"),
   Arr(name: "Deema", image: "4"),
   Arr(name: "Sara", image: "5"),
   Arr(name: "Tasneem", image: "6"),
   Arr(name: "Hanan", image: "7"),
   Arr(name: "Gawaher",image: "8"),
   Arr(name: "Hanan", image: "9"),
   Arr(name: "Munairah", image: "10")
  ]
class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
  override func viewDidLoad() {
  super.viewDidLoad()
  //tableView code
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
  NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
    tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
    tabelView.topAnchor.constraint(equalTo: view.topAnchor),
    tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return Contacts.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let r = Contacts[indexPath.row]
  let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
  cell.imagecell.image = UIImage(named: r.image)
  cell.namecell.text = r.name
  cell.imagecell.layer.masksToBounds = true
  cell.imagecell.layer.cornerRadius = 40
  return cell
  }
 }
  //cell class
 class Cell: UITableViewCell {
  let imagecell = UIImageView()
  let namecell = UILabel()
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
  super.init(style: style , reuseIdentifier: reuseIdentifier )
  imagecell.translatesAutoresizingMaskIntoConstraints = false
  self.addSubview(imagecell)
  NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo: rightAnchor),
   imagecell.heightAnchor.constraint(equalToConstant: 80),
   imagecell.widthAnchor.constraint(equalTo: imagecell.heightAnchor,multiplier: 100/100)])
  namecell.text = "cell"
  namecell.translatesAutoresizingMaskIntoConstraints = false
  self.addSubview(namecell)
  NSLayoutConstraint.activate(
  [namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
  namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor , constant: -80),
  namecell.heightAnchor.constraint(equalToConstant: 80),
  namecell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
  }
  required init?(coder: NSCoder) {
  super.init(coder: coder)
  }
  }














