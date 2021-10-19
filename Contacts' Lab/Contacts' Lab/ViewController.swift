//
//  ViewController.swift
//  Contacts' Lab
//
//  Created by Abdulaziz on 14/03/1443 AH.
//

import UIKit

struct ContactsData {
    var nameContact: String
    var PicContact : String
}


var nContact = [ContactsData(nameContact: "Ahmed", PicContact: "Image"),
          ContactsData(nameContact: "Mohammed", PicContact: "Image-3"),
          ContactsData(nameContact: "Fawaz", PicContact: "Image-2"),
          ContactsData(nameContact: "Hassan", PicContact: "Image-1"),
          ContactsData(nameContact: "Waleed", PicContact: "Image-4"),
          ContactsData(nameContact: "Ibrahim", PicContact: "Image-5"),
          ContactsData(nameContact: "Deema", PicContact: "Image-6"),
          ContactsData(nameContact: "Mram", PicContact: "Image-7"),
          ContactsData(nameContact: "atheer", PicContact: "Image-8"),
          ContactsData(nameContact: "Sara", PicContact: "Image-9"),]


class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        let tabelView = UITableView()
        tabelView.dataSource = self
        tabelView.delegate = self
        tabelView.register(Cell.self, forCellReuseIdentifier: "cell")
        tabelView.backgroundColor = .white
        tabelView.rowHeight = 80
        tabelView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabelView)
        NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
                                     tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
                                     tabelView.topAnchor.constraint(equalTo: view.topAnchor),
                                     tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                                     
                                    ])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = nContact[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! Cell
        cell.namecell.text = contact.nameContact
        cell.imagecell.image = UIImage(named: contact.PicContact)
        cell.imagecell.layer.masksToBounds = true
        cell.imagecell.layer.cornerRadius = 40
        return cell
    }
}

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
             namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor , constant: -290),
             namecell.heightAnchor.constraint(equalToConstant: 80),
             namecell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

