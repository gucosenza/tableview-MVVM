//
//  CustomTableViewCell.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 18/05/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var viewModel: CellViewModelProtocol? {
        didSet{
            update()
        }
    }

    lazy var label: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func update() {
        if let viewModel = self.viewModel {
            label.text = viewModel.textString
        }
        
        contentView.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
