//
//  ViewController.swift
//  day18
//
//  Created by SARA SAUD on 3/13/1443 AH.
//


import UIKit
class ViewController: UITableViewController {
 
 let cellId = "cellId"
 var contacts : [Contact] = [Contact]()
override func viewDidLoad() {
 super.viewDidLoad()
 createProductArray()
 tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
 
 // Do any additional setup after loading the view, typically from a nib.
 
 }
override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 // Dispose of any resources that can be recreated.
 }
 override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
 let currentLastItem = contacts[indexPath.row]
 cell.textLabel?.text = currentLastItem.contactName
     cell.imageView?.image = currentLastItem.contactImage
     
    // cell.contactImage? = UIImageView(named: "\(currentLastItem.contactImage)")
 return cell
 }
 
 override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
 return contacts.count
 }
  func createProductArray() {
      contacts.append(Contact(contactName: "Sara", contactImage: #imageLiteral(resourceName: "1") ))
      contacts.append(Contact(contactName: "Tasnem", contactImage: #imageLiteral(resourceName: "2")))
      contacts.append(Contact(contactName: "Demaa", contactImage:  #imageLiteral(resourceName: "3")))
      contacts.append(Contact(contactName: "Bandar", contactImage: #imageLiteral(resourceName: "4") ))
      contacts.append(Contact(contactName: "Malik", contactImage: #imageLiteral(resourceName: "5")))
      contacts.append(Contact(contactName: "samar", contactImage:  #imageLiteral(resourceName: "1")))
      contacts.append(Contact(contactName: "Saud", contactImage: #imageLiteral(resourceName: "2") ))
      contacts.append(Contact(contactName: "jawaher", contactImage: #imageLiteral(resourceName: "3")))
      contacts.append(Contact(contactName: "yara", contactImage:  #imageLiteral(resourceName: "4")))
    }
}


