//
//  MoreHistoryViewController.swift
//  Vision
//
//  Created by Denys on 13.08.2022.
//

import UIKit

class MoreHistoryViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let context = (UIApplication.shared.delegate as! AppDelegate).peristentContainer.viewContext
    var historyResults = [RecentlySearchedPlace]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Історія"
        getAllItems()
        allHistoryTableView.delegate = self
        allHistoryTableView.dataSource = self
    }
    @IBOutlet var allHistoryTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        getAllItems()
        return historyResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allHistoryCell") as! AllHistoryCell
        self.getAllItems()
        cell.allHistoryLb.text = historyResults.reversed()[indexPath.row].name
        return cell
    }
    
    func getAllItems() {
        do {
            historyResults = try context.fetch(RecentlySearchedPlace.fetchRequest())
        } catch {
            print("Not got any items")
        }
    }
}
