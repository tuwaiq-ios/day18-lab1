//
//  ViewController.swift
//  day18
//
//  Created by sally asiri on 13/03/1443 AH.
//

import UIKit

struct Arr {
  let name: String
  let image: String
}
let ar = [Arr(name: "جواهر", image: "1"),
     Arr(name: "امل", image: "2"),
     Arr(name: "حنان", image: "3"),
     Arr(name: "فاطمه", image: "4"),
     Arr(name: "منيره", image: "5"),
          Arr(name: "سناء", image: "6"),
     Arr(name: "مرام", image: "7"),
          Arr(name: "خلود", image:"8"),
     Arr(name: "ساره", image: "9"),
          Arr(name: "ديما", image: "0")]
class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
 override func viewDidLoad() {
  super.viewDidLoad()
   //table
  let tabelView = UITableView()
  tabelView.dataSource = self
  tabelView.delegate = self
  tabelView.register(Cell.self, forCellReuseIdentifier: "cell")
  tabelView.backgroundColor = .white
  tabelView.rowHeight = 80
  tabelView.translatesAutoresizingMaskIntoConstraints = false
   //add table to view
  view.addSubview(tabelView)
   //constraint
  NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
         tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
         tabelView.topAnchor.constraint(equalTo: view.topAnchor),
         tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
         ])
 }
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return ar.count
 }
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let r = ar[indexPath.row]
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






















