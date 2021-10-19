//
//  ViewController.swift
//  day18
//
//  Created by Amal on 13/03/1443 AH.
//

import UIKit

struct NI {
    var nam : String
    var img : String
}
var ni = [NI(nam: "Amal", img: "a1"),
          NI(nam: "sara", img: "a2"),
          NI(nam: "Jawaher", img: "a3"),
          NI(nam: "sally", img: "a4"),
          NI(nam: "hanan", img: "a5"),
          NI(nam: "fatimah", img: "a6"),
          NI(nam: "Deema", img: "a7"),
          NI(nam: "sanaa", img: "a8"),
          NI(nam: "atheer", img: "a9"),
          NI(nam: "asmaa", img: "a10"),]


class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
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
        NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
                                  tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
                                  tabelView.topAnchor.constraint(equalTo: view.topAnchor),
                                  tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                                    
                                    ])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ni.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nii = ni[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! Cell
        cell.namecell.text = nii.nam
        cell.imagecell.image = UIImage(named: nii.img)
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
            namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor , constant: -70),
            namecell.heightAnchor.constraint(equalToConstant: 80),
            namecell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
         
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    }
