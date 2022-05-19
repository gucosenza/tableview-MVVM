//
//  ViewController.swift
//  tableviewMVVM
//
//  Created by gustavo.cosenza on 10/05/22.
//

import UIKit

class ViewController: UIViewController {
    
//    lazy var firstView = FirstView()
    var firstView: FirstView {
        return view as! FirstView
    }
    var tableDataSource: TableViewDataSource
    var tableDelegate: TableViewDelegate
    var service: Service
    
    var arrayValue: [String] = [] {
        didSet {
            tableDataSource.arrayValue = arrayValue
            firstView.tableview.reloadData()
        }
    }
    
    init() {
        tableDelegate = TableViewDelegate(array: arrayValue)
        tableDataSource = TableViewDataSource(array: arrayValue)
        service = Service()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = FirstView()
        view.viewModel = FirstViewModel()
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Estudo MVVM"
//        self.navigationController?.navigationBar.tintColor = .systemYellow
        
        firstView.tableview.delegate = tableDelegate
        firstView.tableview.dataSource = tableDataSource
        firstView.tableview.register(CustomTableViewCell.self, forCellReuseIdentifier: "customCell")
        
        arrayValue = service.getValues()
    }

}

