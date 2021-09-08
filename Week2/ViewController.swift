//
//  ViewController.swift
//  Week2
//
//  Created by Burak on 8.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var fibonacciResultArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    private func configureUI(){
        let rightBarButtonItem = UIBarButtonItem(title: "Calculate Fibonacci", style: UIBarButtonItem.Style.plain, target: self, action: #selector(showFibonacciResults))
        rightBarButtonItem.tintColor = .red
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    
    @objc func showFibonacciResults(){
        guard let resultArray =  MathOperations.shared.calculateFibonacci(upperLimit: 1000)?.filter({ number in
            number > 750
        }) else { return }
        print(resultArray)
        fibonacciResultArray = resultArray
    }


}

