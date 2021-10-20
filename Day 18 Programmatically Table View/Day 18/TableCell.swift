//
//  TableCell.swift
//  Day 18
//
//  Created by Eth Os on 14/03/1443 AH.
//

import UIKit

class Cell: UITableViewCell {
    
  let imageViewCell = UIImageView()
  let nameLabelCell = UILabel()
    
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
      super.init(style: style , reuseIdentifier: reuseIdentifier )
      
   imageViewCell.translatesAutoresizingMaskIntoConstraints = false
   self.addSubview(imageViewCell)
      
   NSLayoutConstraint.activate([imageViewCell.rightAnchor.constraint(equalTo: rightAnchor),
     imageViewCell.heightAnchor.constraint(equalToConstant: 80),
     imageViewCell.widthAnchor.constraint(equalTo: imageViewCell.heightAnchor,multiplier: 100/100)])
   nameLabelCell.text = "cell"
   nameLabelCell.translatesAutoresizingMaskIntoConstraints = false
      
   self.addSubview(nameLabelCell)
   NSLayoutConstraint.activate(
   [nameLabelCell.centerYAnchor.constraint(equalTo: centerYAnchor),
   nameLabelCell.leftAnchor.constraint(equalTo: imageViewCell.leftAnchor , constant: -80),
   nameLabelCell.heightAnchor.constraint(equalToConstant: 80),
   nameLabelCell.trailingAnchor.constraint(equalTo: trailingAnchor , constant: 100)])
  }
    
  required init?(coder: NSCoder) {
  super.init(coder: coder)
  }
  }
