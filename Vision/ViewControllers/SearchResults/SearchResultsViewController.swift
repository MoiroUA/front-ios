//
//  SearchResultsViewController.swift
//  Vision
//
//  Created by Denys on 29.07.2022.
//

import UIKit
import CoreData

class SearchResultsViewController: UIViewController, UISearchBarDelegate, UISearchResultsUpdating, UISearchControllerDelegate,UITableViewDataSource {
    let searchVC = UISearchController(searchResultsController: ResultsViewController())
    let context = (UIApplication.shared.delegate as! AppDelegate).peristentContainer.viewContext
    var historyResults = [RecentlySearchedPlace]()
    @IBOutlet var recentRequestsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Пошук"
        navigationItem.searchController = searchVC
        recentRequestsTableView.delegate = self
        recentRequestsTableView.dataSource = self
        searchVC.searchResultsUpdater = self
        searchVC.searchBar.placeholder = "Пошук"
        searchVC.searchBar.tintColor = .systemRed
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParent {
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let query = searchController.searchBar.text, !query.trimmingCharacters(in: .whitespaces).isEmpty,
              let resultVC = searchController.searchResultsController as? ResultsViewController
        else { return }
        
        //resultVC.delegate = self
        
        GooglePlacesManager.shared.findPlaces(query: query) { result in
            switch result {
            case .success(let places):
                DispatchQueue.main.async {
                    resultVC.update(with: places)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    func getAllItems() {
        do {
            historyResults = try context.fetch(RecentlySearchedPlace.fetchRequest())
            
        } catch {
            print("Not got any items")
        }
        
    }
    
    @IBAction func moreHistoryBtTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "moreHistoryvc") as! MoreHistoryViewController
        
        navigationController!.pushViewController(vc, animated: true)
    }
}
// MARK: - UITableViewDelegate
extension SearchResultsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.getAllItems()
        if historyResults.count >= 0 && historyResults.count < 5 {
            return historyResults.count
        } else {
            return 5
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recentCell") as! RecentRequestsCell
        self.getAllItems()
        cell.recentLb.text = historyResults.reversed()[indexPath.row].name
        cell.recentImage.image = UIImage(systemName: "clock.arrow.circlepath")
        return cell
        
        
    }
    
}

//
//extension SearchResultsViewController: ResultsViewControllerDelegate {
//    func didTapPlace(with coordinates: CLLocationCoordinate2D) {
//        <#code#>
//    }
//}
