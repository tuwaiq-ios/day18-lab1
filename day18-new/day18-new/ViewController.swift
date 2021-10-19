//
//  ViewController.swift
//  day18-new
//
//  Created by Kholod Sultan on 13/03/1443 AH.
//

import UIKit
  class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
  let names = [ "kholod","Mram","sana","Amal","Sara","Tasnim","Hanan","Gawaher","Munirah","Sally"]
 override func viewDidLoad() {
  super.viewDidLoad()
  let tabelView = UITableView()
  tabelView.dataSource = self
  tabelView.delegate = self
  tabelView.register(Cell.self, forCellReuseIdentifier: "cell")
  tabelView.backgroundColor = .white
  tabelView.translatesAutoresizingMaskIntoConstraints = false
  view.addSubview(tabelView)
  NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
  tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
  tabelView.topAnchor.constraint(equalTo: view.topAnchor),
  tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
 ])
 }
 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   return names.count
 }
 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
   let name = self.names[indexPath.row]
   cell.textLabel?.text = name
   // cell.textLabel?.textAlignment = .center
   return cell   
  }
  }
 class Cell: UITableViewCell {
  let imagecell = UIImageView()
  let namecell = UILabel()
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
  super.init(style: style , reuseIdentifier: reuseIdentifier )
   imagecell.translatesAutoresizingMaskIntoConstraints = false
   imagecell.image = UIImage(named: "tuwa1")
   imagecell.layer.masksToBounds = true
   imagecell.layer.borderColor = UIColor.black.cgColor
   imagecell.layer.cornerRadius = imagecell.bounds.width/2
   imagecell.clipsToBounds = true
   self.addSubview(imagecell)
   NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo: rightAnchor),
       imagecell.topAnchor.constraint(equalTo: topAnchor),
       imagecell.bottomAnchor.constraint(equalTo: bottomAnchor)])
   namecell.translatesAutoresizingMaskIntoConstraints = false
   self.addSubview(namecell)
   NSLayoutConstraint.activate([namecell.rightAnchor.constraint(equalTo: rightAnchor),
           namecell.topAnchor.constraint(equalTo: topAnchor)
 ])
 }
 required init?(coder: NSCoder) {
  super.init(coder: coder)
 }
 }
