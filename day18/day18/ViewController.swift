//
//  ViewController.swift
//  day18
//
//  Created by PC on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,
UITableViewDelegate {
     override func viewDidLoad() {
         super.viewDidLoad()
         let tabelView = UITableView()
         tabelView.dataSource = self
         tabelView.delegate = self
         tabelView.register(Cell.self, forCellReuseIdentifier: "cell")
         tabelView.backgroundColor = .white
         tabelView.rowHeight = 80
         tabelView.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(tabelView)
NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo:
view.leftAnchor),
tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
tabelView.topAnchor.constraint(equalTo: view.topAnchor),
tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
     }
     func tableView(_ tableView: UITableView, numberOfRowsInSection
section: Int) -> Int {
         return data.count
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath:
IndexPath) -> UITableViewCell {
         let dat = data[indexPath.row]
         let cell = tableView.dequeueReusableCell(withIdentifier:
"cell", for: indexPath)
         as! Cell
         cell.namecell.text = dat.name
         cell.imagecell.image = UIImage(named: dat.img)
         cell.imagecell.layer.masksToBounds = true
         cell.imagecell.layer.cornerRadius = 40
         return cell
     }
}

     class Cell: UITableViewCell {
         let imagecell = UIImageView()
         let namecell = UILabel()

         override init(style: UITableViewCell.CellStyle,
reuseIdentifier: String?){
         super.init(style: style , reuseIdentifier: reuseIdentifier )

             imagecell.translatesAutoresizingMaskIntoConstraints = false
             self.addSubview(imagecell)
NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo:
rightAnchor),
             imagecell.heightAnchor.constraint(equalToConstant: 80),
             imagecell.widthAnchor.constraint(equalTo:
imagecell.heightAnchor,multiplier: 100/100)])

             namecell.translatesAutoresizingMaskIntoConstraints = false
             self.addSubview(namecell)
             NSLayoutConstraint.activate(
             [namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
             namecell.leftAnchor.constraint(equalTo:
imagecell.leftAnchor , constant: -80),
             namecell.heightAnchor.constraint(equalToConstant: 80),
             namecell.trailingAnchor.constraint(equalTo: trailingAnchor
, constant: 100)])

     }
     required init?(coder: NSCoder) {
         super.init(coder: coder)
     }
     }

struct  Data{
     var name : String
     var img : String
}

var data = [
     Data(name: "بدر", img: "بدر"),
     Data(name: "محمد", img: "بدر"),
     Data(name: "حسن", img: "بدر"),
     Data(name: "احمد", img: "بدر"),
     Data(name: "فواز", img: "بدر"),
     Data(name: "عبدالعزيز", img: "بدر"),
     Data(name: "حسين", img: "بدر"),
     Data(name: "وليد", img: "بدر"),
     Data(name: "هادي", img: "بدر"),
     Data(name: "بدر", img: "بدر")
]
