//
//  ViewController.swift
//  AgingPeople
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let peopleList: [People] = [People(name: "rayana"), People(name: "Yazan"), People(name: "Nawaf"), People(name: "Deem"),People(name: "Sama"), People(name: "Naif"), People(name: "Meaad"), People(name: "Haneen"), People(name: "Omar"), People(name: "Fisal"), People(name: "Mohaammed"), People(name: "Jawad")]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        peopleList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = peopleList[indexPath.row].name
        cell.detailTextLabel?.text = "\(  peopleList[indexPath.row].age) years old"
        
        return cell
    }
}
struct People{
    var name: String
    let age: Int = Int.random(in: 5...95)
}


