//
//  FirstViewModel.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 19/05/22.
//

import Foundation

protocol FirstViewModelProtocol {
    var buttonTitleString: String { get }
}

class FirstViewModel: FirstViewModelProtocol {
    var buttonTitleString: String
    
    init() {
        buttonTitleString = "Continuar"
    }
}
