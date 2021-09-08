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
        tableView.dataSource = self
        tableView.delegate = self
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
        self.tableView.reloadData()
    }


}


extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fibonacciResultArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(fibonacciResultArray[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
}

