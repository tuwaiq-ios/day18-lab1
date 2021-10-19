//
//  ViewController.swift
//  Day18
//
//  Created by Sara M on 13/03/1443 AH.
//
import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellVC", for: indexPath)
        return cell
    }
override func viewDidLoad() {
super.viewDidLoad()

           let tabelView = UITableView()
    tabelView.dataSource = self
    tabelView.delegate = self
    tabelView.register(Cell.self,forCellReuseIdentifier: "cellTV")
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

    
    class Cell: UITableViewCell{
        let imagecell = UIImageView()
        let namecell = UILabel()
        
   
  override init(style: UITableViewCell.CellStyle,
                reuseIdentifier: String?){
      super.init(style: style , reuseIdentifier: reuseIdentifier )
      
        imagecell.translatesAutoresizingMaskIntoConstraints = false
            imagecell.image = UIImage(named: "1")
             
            imagecell.layer.masksToBounds = true
            imagecell.layer.cornerRadius =
            imagecell.bounds.width/2
      
            self.addSubview(imagecell)
                  NSLayoutConstraint.activate([imagecell.rightAnchor.constraint(equalTo: rightAnchor),
                imagecell.topAnchor.constraint(equalTo: topAnchor),
                imagecell.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
       
            
            namecell.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(namecell)
                  NSLayoutConstraint.activate(
                [namecell.rightAnchor.constraint(equalTo: rightAnchor),
                 namecell.topAnchor.constraint(equalTo: topAnchor)
            ])
  }
  
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
}
    







