//
//  FirstView.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 10/05/22.
//

import UIKit

class FirstView: UIView {
    
    var viewModel: FirstViewModelProtocol? {
        didSet {
            update()
        }
    }

    lazy var tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.backgroundColor = .blue
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
//        button.setTitle("Continuar", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor( .white , for: .normal)
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
    
    private func update() {
        if let viewModel = viewModel {
            button.setTitle(viewModel.buttonTitleString, for: .normal)
        }
    }
    
    private func setup(){
        addSubview(tableview)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            
            button.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            button.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            tableview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            tableview.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0),
            tableview.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0),
            tableview.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -20)
        ])
    }
}
