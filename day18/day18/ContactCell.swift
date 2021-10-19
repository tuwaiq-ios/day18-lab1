//
//  ContactCell.swift
//  day18
//
//  Created by dmdm on 19/10/2021.
//

import UIKit

class ContactCell: UITableViewCell {
 
    var contactImageView = UIImageView()
    var contactTitleLable = UILabel()
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(contactImageView)
        addSubview(contactTitleLable)
        
        configureImageView()
        configureTitleLable()
        setImageConstraints()
        setTitleLableConstraints()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     
    func configureImageView() {
        contactImageView.layer.cornerRadius = 10
        contactImageView.clipsToBounds = true
        
    }
    func configureTitleLable(){
        contactTitleLable.numberOfLines = 0
        contactTitleLable.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints(){
        contactImageView.translatesAutoresizingMaskIntoConstraints = false
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        contactImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        contactImageView.heightAnchor.constraint(equalToConstant: 80 ).isActive = true
        contactImageView.widthAnchor.constraint(equalTo: contactImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    func setTitleLableConstraints(){
        contactTitleLable.translatesAutoresizingMaskIntoConstraints = false
        contactTitleLable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        contactTitleLable.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant:  20 ).isActive = true
        contactTitleLable.heightAnchor.constraint(equalToConstant: 80 ).isActive = true
        contactTitleLable.widthAnchor.constraint(equalTo: contactTitleLable.heightAnchor, multiplier: -12 ).isActive = true
        
    
}
}
