import UIKit
////
////  cell.swift
////  Day18-Lab1-Afnan
////
////  Created by Fno Khalid on 13/03/1443 AH.
////
//
//
//import UIKit



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
        namecell.text = "kkkk"
        namecell.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(namecell)
        NSLayoutConstraint.activate(
        [namecell.centerYAnchor.constraint(equalTo: centerYAnchor),
        namecell.leftAnchor.constraint(equalTo: imagecell.leftAnchor , constant: -80),
        namecell.heightAnchor.constraint(equalToConstant: 80),
        namecell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    

