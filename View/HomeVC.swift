//
//  HomeVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var table: UITableView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.view.backgroundColor =
        //
        self.table.register(UINib.init(nibName: "TextTableViewCell", bundle: .main), forCellReuseIdentifier: "TextTableViewCell")
        
        self.table.register(UINib.init(nibName: "ImageTableViewCell", bundle: .main), forCellReuseIdentifier: "ImageTableViewCell")
    }
    
    //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 5 || indexPath.row == 7 || indexPath.row == 9 )
        {
            // show tex cell
            let cell : TextTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TextTableViewCell", for: indexPath) as!
            TextTableViewCell
            
            cell.view.layer.cornerRadius = 10
            cell.view.clipsToBounds = true
            cell.profileKevin.layer.cornerRadius = 20
            cell.profileKevin.clipsToBounds = true
            
            cell.selectionStyle = .none
            
            return cell
            
        }
        else {
            let cell: ImageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
            
            cell.view.layer.cornerRadius = 10
            cell.view.clipsToBounds = true
            cell.profileKevin.layer.cornerRadius = 20
            cell.profileKevin.clipsToBounds = true



            cell.selectionStyle = .none
            return cell
            
        }
        
    }
}
