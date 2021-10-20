//
//  ViewController.swift
//  day18
//
//  Created by ibrahim asiri on 13/03/1443 AH.
//

import UIKit


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
                                     tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = fruitList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! Cell
        
        cell.nameFruit.text = fruit.name
        cell.imgFruit.image = UIImage(named: fruit.image)
        cell.backgroundColor = fruit.color
        cell.nameFruit.textColor = .white
        cell.imgFruit.layer.masksToBounds = true
        cell.imgFruit.layer.cornerRadius = 40
        return cell
    }
}

class Cell: UITableViewCell {
    let imgFruit = UIImageView()
    let nameFruit = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style , reuseIdentifier: reuseIdentifier )
        
        imgFruit.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imgFruit)
        NSLayoutConstraint.activate([imgFruit.rightAnchor.constraint(equalTo: rightAnchor),
                                     imgFruit.heightAnchor.constraint(equalToConstant: 80),
                                     imgFruit.widthAnchor.constraint(equalTo: imgFruit.heightAnchor,multiplier: 100/100)])
        
        nameFruit.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameFruit)
        NSLayoutConstraint.activate(
            [nameFruit.centerYAnchor.constraint(equalTo: centerYAnchor),
             nameFruit.leftAnchor.constraint(equalTo: imgFruit.leftAnchor , constant: -90),
             nameFruit.heightAnchor.constraint(equalToConstant: 80),
             nameFruit.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

struct Fruit {
    var name : String
    var image : String
    var color : UIColor
}
var fruitList = [
    Fruit(name: "أناناس", image: "انانس", color: .gray),
    Fruit(name: "تفاح", image: "تفاح", color: .darkGray),
    Fruit(name: "موز", image: "موز", color: .opaqueSeparator),
    Fruit(name: "بطيخ", image: "بطيخ", color: .orange),
    Fruit(name: "عنب", image: "عنب", color: .lightGray),
    Fruit(name: "طماطم", image: "طماط", color: .link),
    Fruit(name: "فراولة", image: "فراولة", color: .blue),
    Fruit(name: "كيوي", image: "كيوي", color: .brown),
    Fruit(name: "برتقال", image: "برتقال", color: .red),
    Fruit(name: "مشكل فواكه", image: "سله", color: .purple),
]

