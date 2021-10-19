//
//  ViewController.swift
//  day18day
//
//  Created by dmdm on 19/10/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad(){
        super.viewDidLoad()
        
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register (Cell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([tableView.leftAnchor.constraint (equalTo: view.leftAnchor),

        tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        tableView.topAnchor.constraint(equalTo: view.topAnchor),
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
                                    
    }


class Cell: UITableViewCell {
    let imagecell = UIImageView()
    let namecell = UILabel()
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        imagecell.translatesAutoresizingMaskIntoConstraints = false
        imagecell.image = UIImage(named: "M")
        imagecell.layer.masksToBounds = true
        imagecell.layer.cornerRadius = imagecell.bounds.width/2
        self.addSubview(imagecell)
        NSLayoutConstraint.activate([
            imagecell.rightAnchor.constraint(equalTo: rightAnchor),
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
