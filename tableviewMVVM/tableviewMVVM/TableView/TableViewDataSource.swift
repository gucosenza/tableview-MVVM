//
//  TableViewDataSource.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 18/05/22.
//

import UIKit

class TableViewDataSource: NSObject {
    
    var arrayValue: [String]
    
    init(array: [String]) {
        arrayValue = array
    }
}

extension TableViewDataSource: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayValue.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.viewModel = CellViewModel(texto: arrayValue[indexPath.row])
//        cell.viewModel = CellViewModel(texto: "Gustavo")
        return cell
    }
}
