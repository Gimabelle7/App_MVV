//
//  SearchVC.swift
//  AppMVV
//
//  Created by Gimabelle Garcia vasquez on 25/8/22.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource, ClickHeartDelegate  {
    
    @IBOutlet weak var table_ViewSearch: UITableView!
    
    var searchList : [Search] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table_ViewSearch.delegate = self
        self.table_ViewSearch.dataSource = self
        self.table_ViewSearch.rowHeight = UITableView.automaticDimension
        self.table_ViewSearch.estimatedRowHeight = 800
        
        searchList = SearchVM.listSearch()
        table_ViewSearch.reloadData()
        table_ViewSearch.register(SearchTV.nib(), forCellReuseIdentifier: SearchTV.identifier)
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indexColl = indexPath.row

        let cell = table_ViewSearch.dequeueReusableCell(withIdentifier: SearchTV.identifier, for: indexPath) as! SearchTV
        
        
      let search : Search = searchList[indexColl]
        
        cell.configureSearchTV(with: search, index: indexColl)
 
        //
        cell.delegate = self
        return cell
    }
     // Segue
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("print select Table View")
        
        performSegue(withIdentifier: "ShowDetailSe", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailSearchVC {
            destination.search = searchList[(table_ViewSearch.indexPathForSelectedRow?.row)!]
        }
    }
  
    func getClick(for value: Search, index: Int) {
        
        print("nombre: \(value.titulo) posicion:\(index) statusfav: \(value.favH)")

        if value.favH{
            searchList[index].favH = false

        }else{
            searchList[index].favH = true
        }
        table_ViewSearch.reloadData()
    }
    
    
}

