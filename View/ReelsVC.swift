//
//  ReelsVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class ReelsVC: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableV: UITableView! // paso 1

    var listReels :[Reels1] = [] // Declarar variable
    
    
    override func viewDidLoad() { // paso 2
        super.viewDidLoad()
        tableV.delegate = self
        tableV.dataSource = self
        tableV.register(ReelssTV.nib(), forCellReuseIdentifier: ReelssTV.identifier)
        
        listReels = ReelsVM.listReels()
        tableV.reloadData()      
    }
// table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listReels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableV.dequeueReusableCell(withIdentifier: ReelssTV.identifier, for: indexPath) as! ReelssTV
        let indexColl = indexPath.row
        
        cell.configure(with: listReels[indexColl].contenido)// correcta
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

