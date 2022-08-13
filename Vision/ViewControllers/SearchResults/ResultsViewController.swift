//
//  ResultsViewController.swift
//  Vision
//
//  Created by Denys on 08.08.2022.
//

import UIKit
import GooglePlaces
import CoreLocation
class ResultsViewController: UIViewController,UITableViewDataSource {
    let context = (UIApplication.shared.delegate as! AppDelegate).peristentContainer.viewContext
    let recentlySearchedPlacesDataController: RecentlySearchedPlacesController = RecentlySearchedPlacesController()
    weak var delegate: ResultsViewControllerDelegate?
    private var places: [Place] = []
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    public func update(with places: [Place]) {
        self.tableView.isHidden = false
        self.places = places
        tableView.reloadData()
    }
    
}
extension ResultsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = places[indexPath.row].name
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let place = places[indexPath.row]
        recentlySearchedPlacesDataController.addPlaceToRecentList(name: place.name, identifier: place.identifier, context: context)
        
        GooglePlacesManager.shared.resolveLocation(for: place) { [weak self]result in
            switch result {
            case .success(let coordinate):
                DispatchQueue.main.async {
                    self?.delegate?.didTapPlace(with: coordinate)
                }
                
            case .failure(let error):
                print (error)
            }
        }
        tableView.isHidden = true
    }
}

protocol ResultsViewControllerDelegate: AnyObject {
    func didTapPlace(with coordinates: CLLocationCoordinate2D)
}
