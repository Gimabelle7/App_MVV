//
//  RopaVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 1/9/22.
//

import UIKit

class RopaVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableV: UITableView!
    
    var listRopa :[Ropa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableV.delegate = self
        tableV.dataSource = self
        tableV.register(RopaTV.nib(), forCellReuseIdentifier: RopaTV.identifier)
        
        listRopa = RopaVM.listRopa()
        tableV.reloadData()
    }
    // table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listRopa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableV.dequeueReusableCell(withIdentifier: RopaTV.identifier, for: indexPath) as! RopaTV
        let indexColl = indexPath.row
        
        cell.configureTV(with: listRopa[indexColl].descripcion)// correcta
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
  
}
