//
//  CellViewModel.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 18/05/22.
//

import Foundation

protocol CellViewModelProtocol {
    var textString: String { get }
}

class CellViewModel: CellViewModelProtocol {
    var textString: String
    
    init(texto: String) {
        textString = texto
    }
}
