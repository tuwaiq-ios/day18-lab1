//
//  ViewController.swift
//  day18day
//
//  Created by dmdm on 19/10/2021.
//

import UIKit

struct Array {
    let name : String
    let image : String
}

let array = [Array( name: "Sara", image: "F"),
               Array( name: "Hassan", image: "M" ),
               Array( name: "Deema", image: "F"),
               Array(name: "Mohammed", image: "M"),
               Array( name: "tasneem", image: "F"),
               Array(name: "Hadi", image: "M"),
               Array( name: "amal", image: "F"),
               Array( name: "Fawaz", image: "M"),
               Array( name: "sana", image: "F"),
               Array( name: "ahmed", image: "M")]

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad(){
        super.viewDidLoad()
        
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register (Cell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        tableView.rowHeight = 80
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([tableView.leftAnchor.constraint (equalTo: view.leftAnchor),
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        tableView.topAnchor.constraint(equalTo: view.topAnchor),
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let ar = array [indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Cell
        
        cell.imagecell.image = UIImage (named: ar.image)
        cell.namecell.text = ar.name
        cell.imagecell.layer.masksToBounds = true
        cell.imagecell.layer.cornerRadius = 40
        
        return cell
        
    }
                                    
    }


class Cell: UITableViewCell {
    let imagecell = UIImageView()
    let namecell = UILabel()
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imagecell.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imagecell)

        NSLayoutConstraint.activate([
            imagecell.rightAnchor.constraint(equalTo: rightAnchor),
            imagecell.heightAnchor.constraint(equalToConstant: 80),
            imagecell.widthAnchor.constraint(equalTo: imagecell.heightAnchor,multiplier: 100/100)])
        namecell.text = "ddd"
        namecell.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(namecell)
        
        NSLayoutConstraint.activate([namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
                                     namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor, constant: -80),
                                     namecell.heightAnchor.constraint(equalToConstant: 80),
                                     namecell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 100)
                                    ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    }
