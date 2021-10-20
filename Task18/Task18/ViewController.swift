//
//  ViewController.swift
//  Task18
//
//  Created by MacBook on 14/03/1443 AH.
//

import UIKit


struct Arr {
    let name : String
    let image : String
}

let Contacts = [
    Arr (name: "Amal", image: "Amal"),
    Arr (name: "Mona", image: "Amal"),
    Arr (name: "Abeer", image: "Amal"),
    Arr (name: "Lama", image: "Amal"),
    Arr (name: "Amal", image: "Amal"),
    Arr(name: "Areej", image: "Amal"),
    Arr (name: "Amal", image: "Amal"),
    Arr (name: "Amal", image: "Amal"),
    Arr(name: "Areej", image: "Amal"
       ),
    Arr (name: "Amal", image: "Amal"),
]


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    // code tableview
    let tabelview = UITableView()
    tabelview.dataSource = self
    tabelview.delegate = self
    tabelview.register(cell.self, forCellReuseIdentifier: "cell")
    tabelview.backgroundColor = .white
    tabelview.rowHeight = 80
    tabelview.translatesAutoresizingMaskIntoConstraints = false
    
    
    //add table for view
    view.addSubview(tabelview)
    
    
    //add constraint
    NSLayoutConstraint.activate([tabelview.leftAnchor.constraint(equalTo: view.leftAnchor),
                                 tabelview.rightAnchor.constraint(equalTo: view.rightAnchor),
                                 tabelview.topAnchor.constraint(equalTo: view.topAnchor),
                                 tabelview.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let r = Contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! cell
        
        cell.imagecell.image = UIImage(named: r.name)
        cell.namecell.text = r.name
        cell.namecell.layer.masksToBounds = true
        
        return cell
        
    }
}




//cell class
class cell: UITableViewCell {
    
    let imagecell = UIImageView()
    let namecell = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        imagecell.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imagecell)
        
        NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo: rightAnchor),
                                     imagecell.heightAnchor.constraint(equalToConstant: 80),
                                     imagecell.widthAnchor.constraint(equalTo:imagecell.heightAnchor,multiplier: 100/100)])
        namecell.text = "Cell"
        namecell.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(namecell)
        
        NSLayoutConstraint.activate([namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
                                     namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor, constant: -80),
                                     namecell.heightAnchor.constraint(equalToConstant: 80),
                                     namecell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 100)])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}



