//
//  TableViewDelegate.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 18/05/22.
//

import UIKit

class TableViewDelegate: NSObject {
    
    var arrayValue: [String]
    
    init(array: [String]) {
        arrayValue = array
    }
}

extension TableViewDelegate: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
