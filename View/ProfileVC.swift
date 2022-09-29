//
//  ProfileVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class ProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    @IBOutlet weak var tvCell: UITableView!
    
    var userList :[User] = [] // inicializar

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tvCell.delegate = self
        self.tvCell.dataSource = self
        self.tvCell.rowHeight = UITableView.automaticDimension
        self.tvCell.estimatedRowHeight = 800
        
        userList = ProfileVM.listUSer()
        tvCell.reloadData()
        tvCell.register(ProfileTV.nib(), forCellReuseIdentifier: ProfileTV.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvCell.dequeueReusableCell(withIdentifier: ProfileTV.identifier, for: indexPath) as! ProfileTV
        
        let indexColl = indexPath.row
        let user : User = userList[indexColl]
        cell.configureTV(with: user)// correcta
        
        return cell
    
}
    // pasar de una pantalla a otra
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetails", sender: self)
    }
    
    // pasar de una pantalla a otra
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailProfileVC {
            destination.user = userList[(tvCell.indexPathForSelectedRow?.row)!]
        }
    }
    
}
