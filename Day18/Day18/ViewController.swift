//
//  ViewController.swift
//  Day18
//
//  Created by Sara M on 13/03/1443 AH.
//
import UIKit


struct Array {
    let image: String
    let name: String
}

let arr = [Array(image: "1", name: "Sara"),
           Array(image: "1", name: "Deema"),
           Array(image: "1", name: "Hassan"),
           Array(image: "1", name: "Tasneem"),
           Array(image: "1", name: "Sanaa"),
           Array(image: "1", name: "aziz"),
           Array(image: "1", name: "Maram"),
           Array(image: "1", name: "Jwaher"),
           Array(image: "1", name: "Fawaz"),
           Array(image: "1", name: "Atheer")
]
class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
   
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arr.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
    let r = arr[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "CellVC", for: indexPath) as! Cell
   
    
    cell.imagecell.image = UIImage(named: r.image)
    cell.namecell.text = r.name
    cell.imagecell.layer.masksToBounds = true
    cell.imagecell.layer.cornerRadius = 40
    return cell
}
    
    override func viewDidLoad() {
    super.viewDidLoad()

              
        let tabelView = UITableView()
        
        tabelView.dataSource = self
        tabelView.delegate = self
        tabelView.register(Cell.self,forCellReuseIdentifier: "CellVC")
        tabelView.rowHeight = 80
        tabelView.backgroundColor = .white
        tabelView.translatesAutoresizingMaskIntoConstraints
        = false
       
        view.addSubview(tabelView)
        NSLayoutConstraint.activate([tabelView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tabelView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tabelView.topAnchor.constraint(equalTo: view.topAnchor),
            tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                                    
                                    ])
}
    
    
    class Cell: UITableViewCell
    {
        let imagecell = UIImageView()
        let namecell = UILabel()
  
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
            imagecell.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(imagecell)
            NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo: rightAnchor),
            imagecell.heightAnchor.constraint(equalToConstant: 80),
            imagecell.widthAnchor.constraint (equalTo:
            imagecell.heightAnchor, multiplier: 100/100)])
            namecell.text = "1"
            namecell.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(namecell)
            NSLayoutConstraint.activate(
            [namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
            namecell.leftAnchor.constraint(equalTo:
            imagecell.leftAnchor , constant: -80),
            namecell.heightAnchor.constraint (equalToConstant: 80),
            namecell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
        }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
    }
}
