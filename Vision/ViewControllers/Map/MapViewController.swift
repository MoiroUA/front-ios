//
//  MapViewController.swift
//  Vision
//
//  Created by Denys on 06.06.2022.
//

import UIKit
import GoogleMaps
import CoreLocation
import Moya




class MapViewController: UIViewController, CLLocationManagerDelegate, ResultsViewControllerDelegate {
    var mapData = [WelcomeElement]()
    let apiService: NewsService = NewsService()
    @IBOutlet var homeView: UIView!
    let mapProvider =  MoyaProvider<MapService>()
    
    func didTapPlace(with coordinates: CLLocationCoordinate2D) {
        
        let camera = GMSCameraPosition.camera(withLatitude: coordinates.latitude, longitude: coordinates.longitude, zoom: 13.0)
        let mapView = GMSMapView.map(withFrame: self.homeView.frame, camera: camera)
        homeView.addSubview(mapView)
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
        marker.map = mapView
    }
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyBHxObHd1AnPlMI6jw3d3D8QkkBS5SZt8Y")
        let urlString = "https://vision-project-iot.herokuapp.com/areas"
        
        
        URLSession.shared.dataTask(with: URL(string: urlString)!, completionHandler: { data, responce, error in
            guard let data = data, error == nil else {
                print ("Someting went wrong")
                return
                
            }
            //have data
            do {
                
                let map = try JSONDecoder().decode([MapDataModel].self, from: data)
                DispatchQueue.main.async {
                    self.mapData = map
                }
                
                print("ddsdsdaudfhaofjoiafjipfa \(map)")
                
            }
            catch {
                print(error.localizedDescription)
            }
            
        }).resume()
        
        
        
        
        let backButton = UIBarButtonItem(
            title: "Карта",
            style: UIBarButtonItem.Style.plain,
            target: nil,
            action: nil
        );
        
        self.navigationController!.navigationBar.topItem!.backBarButtonItem = backButton;
        
        searchBt.layer.cornerRadius = 18
        searchBt.layer.shadowColor = UIColor.black.cgColor
        searchBt.layer.shadowOpacity = 0.2
        searchBt.layer.shadowOffset = .zero
        searchBt.layer.shadowRadius = 2
        manager.delegate = self
        
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    @IBAction func searchButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "searchResultsvc") as! SearchResultsViewController
        
        navigationController!.pushViewController(vc, animated: false)
        
    }
    @IBOutlet var searchBt: UIButton!
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        let camera = GMSCameraPosition.camera(withLatitude: 49.8397, longitude: 24.0297, zoom: 13.0)
        let mapView = GMSMapView.map(withFrame: self.homeView.frame, camera: camera)
        
        homeView.addSubview(mapView)
        
        
        for zone in mapData {
            let rect = GMSMutablePath()
            for coordenate in zone.coordinates {
                rect.add(CLLocationCoordinate2D(latitude: CLLocationDegrees(coordenate.latitude), longitude:  CLLocationDegrees(coordenate.latitude)))
            }
            let polygon = GMSPolygon(path: rect)
            polygon.fillColor = zone.kef > 0.7 ? UIColor.red : UIColor.yellow
            polygon.strokeColor = zone.kef > 0.7 ? UIColor.red : UIColor.yellow
            polygon.strokeWidth = 1
            polygon.map = mapView
        }
        
        
        let coordinate = location.coordinate
        // Create a rectangular path
        
    }
}

