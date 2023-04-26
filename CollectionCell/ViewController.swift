//
//  ViewController.swift
//  CollectionCell
//
//  Created by Mohan K on 24/11/22.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet weak var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "1", imageName: "image"))
        models.append(Model(text: "2", imageName: "image1"))
        models.append(Model(text: "3", imageName: "image2"))
        models.append(Model(text: "4", imageName: "image3"))
        models.append(Model(text: "5", imageName: "image"))
        models.append(Model(text: "6", imageName: "image1"))
        models.append(Model(text: "7", imageName: "image2"))
        models.append(Model(text: "8", imageName: "image3"))
        models.append(Model(text: "9", imageName: "image"))
        models.append(Model(text: "10", imageName: "image1"))
        models.append(Model(text: "11", imageName: "image2"))
        models.append(Model(text: "12", imageName: "image3"))
        models.append(Model(text: "13", imageName: "image"))
        models.append(Model(text: "14", imageName: "image1"))
        models.append(Model(text: "15", imageName: "image2"))
        models.append(Model(text: "16", imageName: "image3"))
        
        table.delegate = self
        table.dataSource = self
        
        table.rowHeight =  200
        
        table.register(CollectionTableViewCell.nib() ,  forCellReuseIdentifier: CollectionTableViewCell.identifier)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        
        cell.configure(with: models)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}
