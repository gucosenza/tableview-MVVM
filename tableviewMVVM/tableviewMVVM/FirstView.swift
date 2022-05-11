//
//  FirstView.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 10/05/22.
//

import UIKit

class FirstView: UIView {

    lazy var tableview: UITableView = {
        let table = UITableView()
        
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    init(){
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(){
        addSubview(tableview)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            
            
            tableview.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            tableview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
        ])
    }
}
