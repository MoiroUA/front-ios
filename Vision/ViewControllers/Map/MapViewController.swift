//
//  MapViewController.swift
//  Vision
//
//  Created by Denys on 06.06.2022.
//

import UIKit
import GoogleMaps
import CoreLocation

 



class MapViewController: UIViewController, CLLocationManagerDelegate, ResultsViewControllerDelegate {
    
    @IBOutlet var homeView: UIView!
    
    func didTapPlace(with coordinates: CLLocationCoordinate2D) {
        // Remove all pinned
        
        // Add a map pin
//        let camera = GMSCameraPosition.camera(withLatitude: coordinates.latitude, longitude: coordinates.longitude, zoom: 18.0)
//        let mapView = GMSMapView.map(withFrame: self.homeView.frame, camera: camera)
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
//        marker.map = mapView
//
        
      
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
        
        
        let coordinate = location.coordinate
        let camera = GMSCameraPosition.camera(withLatitude: 49.8397, longitude: 24.0297, zoom: 13.0)
        let mapView = GMSMapView.map(withFrame: self.homeView.frame, camera: camera)
        homeView.addSubview(mapView)
        // Create a rectangular path
        let rect1 = GMSMutablePath()
        let rect2 = GMSMutablePath()
        let rect3 = GMSMutablePath()
        let rect4 = GMSMutablePath()
        let rect5 = GMSMutablePath()
        let rect6 = GMSMutablePath()
        let rect7 = GMSMutablePath()
        let rect8 = GMSMutablePath()
        let rect9 = GMSMutablePath()
        let rect10 = GMSMutablePath()
        let rect11 = GMSMutablePath()
        let rect12 = GMSMutablePath()
        let rect13 = GMSMutablePath()
        let rect14 = GMSMutablePath()
        let rect15 = GMSMutablePath()
        let rect16 = GMSMutablePath()
        let rect17 = GMSMutablePath()
        let rect18 = GMSMutablePath()
        let rect19 = GMSMutablePath()
        let rect20 = GMSMutablePath()
        let rect21 = GMSMutablePath()
        let rect22 = GMSMutablePath()
        let rect23 = GMSMutablePath()
       
        rect1.add(CLLocationCoordinate2D(latitude: 49.8420443, longitude: 23.9677062))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8428746, longitude: 23.9788642))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8434835, longitude: 23.9816966))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8468597, longitude: 23.9905372))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8490735, longitude: 23.9960304))
        rect1.add(CLLocationCoordinate2D(latitude: 49.855161, longitude: 23.98204))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8572637, longitude: 23.9768043))
        rect1.add(CLLocationCoordinate2D(latitude: 49.855161, longitude: 23.9719978))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8530581, longitude: 23.9596382))
        rect1.add(CLLocationCoordinate2D(latitude: 49.852062, longitude: 23.9528575))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8446458, longitude: 23.9528575))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8413801, longitude: 23.9613548))
        rect1.add(CLLocationCoordinate2D(latitude: 49.8420443, longitude: 23.9677062))
        
        rect2.add(CLLocationCoordinate2D(latitude: 49.8205454, longitude: 23.9688754))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8213761, longitude: 23.9683604))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8227051, longitude: 23.9668154))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8221513, longitude: 23.9656996))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8201578, longitude: 23.9646697))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8198809, longitude: 23.9636397))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8190502, longitude: 23.9643263))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8172227, longitude: 23.9579749))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8166135, longitude: 23.9583182))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8157274, longitude: 23.959434))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8156167, longitude: 23.9619231))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8136783, longitude: 23.9638972))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8139552, longitude: 23.9650988))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8125706, longitude: 23.9671587))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8107428, longitude: 23.9692187))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8111305, longitude: 23.9699053))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8132906, longitude: 23.9736819))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8141767, longitude: 23.9752268))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8121829, longitude: 23.9808917))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8137336, longitude: 23.9814066))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8155059, longitude: 23.9821791))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8166689, longitude: 23.9823508))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8176104, longitude: 23.9821791))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8195486, longitude: 23.9803767))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8199917, longitude: 23.9833807))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8208223, longitude: 23.9832949))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8219298, longitude: 23.9810633))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8225943, longitude: 23.9787459))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8240894, longitude: 23.9768576))
        rect2.add(CLLocationCoordinate2D(latitude: 49.8205454, longitude: 23.9688754))
        
        rect3.add(CLLocationCoordinate2D(latitude: 49.8385672, longitude: 23.9944529))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8389823, longitude: 23.9941525))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8392868, longitude: 23.992908))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8397573, longitude: 23.9905476))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8400064, longitude: 23.988316))
        rect3.add(CLLocationCoordinate2D(latitude: 49.840726, longitude: 23.9862561))
        rect3.add(CLLocationCoordinate2D(latitude: 49.840643, longitude: 23.9842391))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8385672, longitude: 23.9822649))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8371279, longitude: 23.9808917))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8364359, longitude: 23.9814496))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8349412, longitude: 23.9826083))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8355225, longitude: 23.9861273))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8361314, longitude: 23.9892601))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8367404, longitude: 23.992908))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8372109, longitude: 23.9960837))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8367681, longitude: 23.996427))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8362145, longitude: 23.9965987))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8359377, longitude: 23.9956545))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8355502, longitude: 23.9938521))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8355225, longitude: 23.9916634))
        rect3.add(CLLocationCoordinate2D(latitude: 49.835301, longitude: 23.9906764))
        rect3.add(CLLocationCoordinate2D(latitude: 49.834609, longitude: 23.9909338))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8334465, longitude: 23.9909338))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8316195, longitude: 23.9907622))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8299862, longitude: 23.9904189))
        rect3.add(CLLocationCoordinate2D(latitude: 49.827993, longitude: 23.9899039))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8294326, longitude: 23.9931654))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8302077, longitude: 23.9950537))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8315364, longitude: 23.9980578))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8324776, longitude: 23.9999461))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8332527, longitude: 23.9991307))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8336956, longitude: 23.9987444))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8348028, longitude: 23.9982295))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8358546, longitude: 23.9976286))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8362698, longitude: 23.9996886))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8366297, longitude: 24.0015769))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8368511, longitude: 24.0015769))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8371556, longitude: 24.0012335))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8384564, longitude: 23.9975428))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8390654, longitude: 23.9958262))
        rect3.add(CLLocationCoordinate2D(latitude: 49.8385672, longitude: 23.9944529))
        
        rect4.add(CLLocationCoordinate2D(latitude: 49.8266413, longitude: 24.0106719))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8257276, longitude: 24.0113157))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8270012, longitude: 24.013204))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8276656, longitude: 24.0142339))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8281639, longitude: 24.0138906))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8292159, longitude: 24.0152639))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8297418, longitude: 24.0152639))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8296588, longitude: 24.0168518))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8301571, longitude: 24.0169805))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8303786, longitude: 24.0171951))
        rect4.add(CLLocationCoordinate2D(latitude: 49.830517, longitude: 24.0164655))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8309322, longitude: 24.0161222))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8305446, longitude: 24.0151351))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8295204, longitude: 24.0137189))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8286345, longitude: 24.012689))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8276933, longitude: 24.0118307))
        rect4.add(CLLocationCoordinate2D(latitude: 49.8266413, longitude: 24.0106719))
        
        rect5.add(CLLocationCoordinate2D(latitude: 49.8557194, longitude: 24.0454034))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8550553, longitude: 24.0449743))
        rect5.add(CLLocationCoordinate2D(latitude: 49.854336, longitude: 24.043601))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8540593, longitude: 24.0419702))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8534505, longitude: 24.0405111))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8523991, longitude: 24.0411119))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8513476, longitude: 24.0431718))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8509049, longitude: 24.0442876))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8509602, longitude: 24.0470342))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8510709, longitude: 24.0494375))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8514583, longitude: 24.0506391))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8522331, longitude: 24.0510682))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8518457, longitude: 24.0535573))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8510156, longitude: 24.0569906))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8511263, longitude: 24.0581922))
        rect5.add(CLLocationCoordinate2D(latitude: 49.851569, longitude: 24.0606813))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8508495, longitude: 24.0629987))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8503515, longitude: 24.0661744))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8496874, longitude: 24.0710668))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8495767, longitude: 24.0746717))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8499641, longitude: 24.0763883))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8500748, longitude: 24.0786199))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8506835, longitude: 24.0786199))
        rect5.add(CLLocationCoordinate2D(latitude: 49.851901, longitude: 24.0776758))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8547787, longitude: 24.0763025))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8569368, longitude: 24.0746717))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8588735, longitude: 24.0724401))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8604227, longitude: 24.0707235))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8599801, longitude: 24.0665178))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8598141, longitude: 24.0635137))
        rect5.add(CLLocationCoordinate2D(latitude: 49.860893, longitude: 24.0634064))
        rect5.add(CLLocationCoordinate2D(latitude: 49.862138, longitude: 24.063385))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8625253, longitude: 24.0617971))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8625806, longitude: 24.0593938))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8630786, longitude: 24.0556173))
        rect5.add(CLLocationCoordinate2D(latitude: 49.864683, longitude: 24.0552739))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8646277, longitude: 24.0529565))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8621933, longitude: 24.0508966))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8584308, longitude: 24.0477208))
        rect5.add(CLLocationCoordinate2D(latitude: 49.8557194, longitude: 24.0454034))
        
        rect6.add(CLLocationCoordinate2D(latitude: 49.8289846, longitude: 24.0454892))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8305348, longitude: 24.0484933))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8297043, longitude: 24.0509824))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8295936, longitude: 24.053214))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8286524, longitude: 24.0564756))
        rect6.add(CLLocationCoordinate2D(latitude: 49.829206, longitude: 24.058278))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8311992, longitude: 24.0605096))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8329155, longitude: 24.0608529))
        rect6.add(CLLocationCoordinate2D(latitude: 49.833912, longitude: 24.0605096))
        rect6.add(CLLocationCoordinate2D(latitude: 49.834687, longitude: 24.058278))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8343549, longitude: 24.057248))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8349638, longitude: 24.0536432))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8338566, longitude: 24.0520124))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8319743, longitude: 24.0517549))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8314206, longitude: 24.0510682))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8322511, longitude: 24.0477208))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8315867, longitude: 24.0452318))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8300365, longitude: 24.0440301))
        rect6.add(CLLocationCoordinate2D(latitude: 49.8289846, longitude: 24.0454892))
        
        rect7.add(CLLocationCoordinate2D(latitude: 49.8614994, longitude: 24.0079519))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8599501, longitude: 24.0087244))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8590648, longitude: 24.0101835))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8578475, longitude: 24.0113851))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8572111, longitude: 24.0122864))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8564365, longitude: 24.0140459))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8556341, longitude: 24.0144751))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8547487, longitude: 24.0144751))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8552467, longitude: 24.0166637))
        rect7.add(CLLocationCoordinate2D(latitude: 49.8559661, longitude: 24.0194532))
      
        rect9.add(CLLocationCoordinate2D(latitude: 49.8209987, longitude: 24.0558456))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8199743, longitude: 24.0564893))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8191713, longitude: 24.0572189))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8183683, longitude: 24.0584205))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8173715, longitude: 24.0600942))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8167346, longitude: 24.06121))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8159316, longitude: 24.0619396))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8159316, longitude: 24.0636991))
        rect9.add(CLLocationCoordinate2D(latitude: 49.81607, longitude: 24.0659736))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8163469, longitude: 24.0674757))
        rect9.add(CLLocationCoordinate2D(latitude: 49.816873, longitude: 24.0683769))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8174545, longitude: 24.0687202))
        rect9.add(CLLocationCoordinate2D(latitude: 49.818036, longitude: 24.0683769))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8189498, longitude: 24.0682052))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8196143, longitude: 24.0687202))
        rect9.add(CLLocationCoordinate2D(latitude: 49.820445, longitude: 24.0679907))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8203065, longitude: 24.0668749))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8201958, longitude: 24.0656303))
        rect9.add(CLLocationCoordinate2D(latitude: 49.820445, longitude: 24.0643858))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8211095, longitude: 24.0623258))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8219678, longitude: 24.0614246))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8229922, longitude: 24.0601801))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8226046, longitude: 24.0583776))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8218017, longitude: 24.0578197))
        rect9.add(CLLocationCoordinate2D(latitude: 49.8209987, longitude: 24.0558456))
        
        rect10.add(CLLocationCoordinate2D(latitude: 49.8403688, longitude: 24.0909849))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8387654, longitude: 24.0927123))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8383502, longitude: 24.0935706))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8366065, longitude: 24.0943431))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8362467, longitude: 24.0973471))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8364404, longitude: 24.0994929))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8357742, longitude: 24.1019712))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8380024, longitude: 24.1031728))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8387912, longitude: 24.1034089))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8391648, longitude: 24.1060911))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8402996, longitude: 24.1054044))
        rect10.add(CLLocationCoordinate2D(latitude: 49.841808, longitude: 24.1046963))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8421973, longitude: 24.103012))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8419187, longitude: 24.1009842))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8412683, longitude: 24.0963279))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8428735, longitude: 24.0960918))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8428182, longitude: 24.0949331))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8427766, longitude: 24.0938173))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8424169, longitude: 24.0919505))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8414344, longitude: 24.0918432))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8407424, longitude: 24.092208))
        rect10.add(CLLocationCoordinate2D(latitude: 49.8403688, longitude: 24.0909849))

        
        rect11.add(CLLocationCoordinate2D(latitude: 49.8222412, longitude: 24.0297928))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8228711, longitude: 24.0308442))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8232587, longitude: 24.0314772))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8237086, longitude: 24.0322389))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8245046, longitude: 24.0312733))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8241793, longitude: 24.0307798))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8242277, longitude: 24.0302434))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8240478, longitude: 24.0299322))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8241862, longitude: 24.0294924))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8241862, longitude: 24.0289559))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8240339, longitude: 24.0284302))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8238263, longitude: 24.0279689))
        rect11.add(CLLocationCoordinate2D(latitude: 49.823231, longitude: 24.0282049))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8228434, longitude: 24.0285697))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8223935, longitude: 24.0287843))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8222966, longitude: 24.0293529))
        rect11.add(CLLocationCoordinate2D(latitude: 49.8222412, longitude: 24.0297928))
        
        rect12.add(CLLocationCoordinate2D(latitude: 49.8353004, longitude: 24.0057763))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8348506, longitude: 24.0070423))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8347537, longitude: 24.008319))
        rect12.add(CLLocationCoordinate2D(latitude: 49.834726, longitude: 24.0099712))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8346637, longitude: 24.0128036))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8346568, longitude: 24.0145524))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8346637, longitude: 24.0163871))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8347191, longitude: 24.0174063))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8347329, longitude: 24.0179106))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8352727, longitude: 24.0185972))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8356671, longitude: 24.0179964))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8359508, longitude: 24.0174492))
        rect12.add(CLLocationCoordinate2D(latitude: 49.835847, longitude: 24.0171166))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8360477, longitude: 24.0165587))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8362899, longitude: 24.016151))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8367951, longitude: 24.0152927))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8370026, longitude: 24.0149065))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8372864, longitude: 24.014885))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8376254, longitude: 24.0147563))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8377292, longitude: 24.0143808))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8377776, longitude: 24.0139516))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8376739, longitude: 24.013383))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8372102, longitude: 24.0123745))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8366151, longitude: 24.0108188))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8362553, longitude: 24.0098639))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8355772, longitude: 24.0083619))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8356325, longitude: 24.0079006))
        rect12.add(CLLocationCoordinate2D(latitude: 49.835591, longitude: 24.0071925))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8355841, longitude: 24.0063127))
        rect12.add(CLLocationCoordinate2D(latitude: 49.8353004, longitude: 24.0057763))
        
        rect13.add(CLLocationCoordinate2D(latitude: 49.8261185, longitude: 23.969475))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8244643, longitude: 23.9710629))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8250249, longitude: 23.9723074))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8254125, longitude: 23.9719105))
        rect13.add(CLLocationCoordinate2D(latitude: 49.825724, longitude: 23.9715135))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8259731, longitude: 23.9721358))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8266722, longitude: 23.9715457))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8268175, longitude: 23.9714384))
        rect13.add(CLLocationCoordinate2D(latitude: 49.826603, longitude: 23.9709234))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8263884, longitude: 23.9704084))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8262154, longitude: 23.9699149))
        rect13.add(CLLocationCoordinate2D(latitude: 49.8261185, longitude: 23.969475))
        
        
        rect14.add(CLLocationCoordinate2D(latitude: 49.8243297, longitude: 23.9176078))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8226685, longitude: 23.9152903))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8207857, longitude: 23.9146895))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8215056, longitude: 23.9200969))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8225578, longitude: 23.9241309))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8207304, longitude: 23.9249892))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8198443, longitude: 23.9268775))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8173523, longitude: 23.9280791))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8160785, longitude: 23.9310832))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8239975, longitude: 23.937778))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8253264, longitude: 23.9407821))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8262123, longitude: 23.944387))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8265999, longitude: 23.9474769))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8246619, longitude: 23.9471335))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8241082, longitude: 23.9509101))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8234991, longitude: 23.9560599))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8277627, longitude: 23.9546866))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8278734, longitude: 23.9527125))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8298666, longitude: 23.9505668))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8318597, longitude: 23.9488502))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8306971, longitude: 23.9449878))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8296451, longitude: 23.9412112))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8286485, longitude: 23.9374347))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8284271, longitude: 23.9364905))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8284824, longitude: 23.9334006))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8287593, longitude: 23.9267058))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8287593, longitude: 23.9234443))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8289807, longitude: 23.9177795))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8284824, longitude: 23.917007))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8264892, longitude: 23.917007))
        rect14.add(CLLocationCoordinate2D(latitude: 49.8243297, longitude: 23.9176078))

        
        rect15.add(CLLocationCoordinate2D(latitude: 49.8116873, longitude: 24.0195189))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8110227, longitude: 24.0233813))
        rect15.add(CLLocationCoordinate2D(latitude: 49.809998, longitude: 24.0292607))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8086133, longitude: 24.0379296))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8078932, longitude: 24.0437661))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8076963, longitude: 24.0472691))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8094718, longitude: 24.0468131))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8118812, longitude: 24.0462123))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8134874, longitude: 24.045826))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8145397, longitude: 24.0461264))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8156196, longitude: 24.0457831))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8174472, longitude: 24.0447531))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8187209, longitude: 24.0432511))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8194408, longitude: 24.0410195))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8205207, longitude: 24.0400754))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8202992, longitude: 24.0392171))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8206038, longitude: 24.0384875))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8207145, longitude: 24.0373717))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8213513, longitude: 24.0368567))
        rect15.add(CLLocationCoordinate2D(latitude: 49.820493, longitude: 24.0337668))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8198562, longitude: 24.0341101))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8186656, longitude: 24.0353547))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8181671, longitude: 24.0341101))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8170872, longitude: 24.033166))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8167826, longitude: 24.0329085))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8163396, longitude: 24.0321789))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8152873, longitude: 24.0312777))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8166165, longitude: 24.0269004))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8168657, longitude: 24.0259562))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8178349, longitude: 24.0247117))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8181118, longitude: 24.0229521))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8185825, longitude: 24.0202056))
        rect15.add(CLLocationCoordinate2D(latitude: 49.8116873, longitude: 24.0195189))
        
        rect16.add(CLLocationCoordinate2D(latitude: 49.8021015, longitude: 24.017915))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8007165, longitude: 24.0178292))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7988329, longitude: 24.0171425))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7968938, longitude: 24.0170567))
        rect16.add(CLLocationCoordinate2D(latitude: 49.796506, longitude: 24.021949))
        rect16.add(CLLocationCoordinate2D(latitude: 49.796506, longitude: 24.0276997))
        rect16.add(CLLocationCoordinate2D(latitude: 49.796506, longitude: 24.0332787))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7976141, longitude: 24.0361111))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7978357, longitude: 24.0390293))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7967276, longitude: 24.0392868))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7943452, longitude: 24.0408318))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7947885, longitude: 24.0457241))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7944006, longitude: 24.0488999))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7949547, longitude: 24.0513031))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7961736, longitude: 24.0528481))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7966722, longitude: 24.0522473))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7975033, longitude: 24.0531056))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7991099, longitude: 24.054908))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7999963, longitude: 24.0551655))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7999409, longitude: 24.0567963))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7991653, longitude: 24.059972))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7980573, longitude: 24.0628044))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7986113, longitude: 24.0634911))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8012705, longitude: 24.0652935))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8029325, longitude: 24.0640919))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8043174, longitude: 24.0631478))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8064777, longitude: 24.061002))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8067547, longitude: 24.0588562))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8071978, longitude: 24.0543072))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8076963, longitude: 24.050359))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8076963, longitude: 24.0472691))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8057576, longitude: 24.0469258))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8044835, longitude: 24.0465824))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8032648, longitude: 24.0464966))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8028217, longitude: 24.0482132))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8019353, longitude: 24.0470116))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8008273, longitude: 24.0430634))
        rect16.add(CLLocationCoordinate2D(latitude: 49.7998301, longitude: 24.0370552))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8003841, longitude: 24.0293305))
        rect16.add(CLLocationCoordinate2D(latitude: 49.8021015, longitude: 24.017915))
        
        rect17.add(CLLocationCoordinate2D(latitude: 49.8266413, longitude: 24.0106719))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8257276, longitude: 24.0113157))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8270012, longitude: 24.013204))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8276656, longitude: 24.0142339))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8281639, longitude: 24.0138906))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8292159, longitude: 24.0152639))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8297418, longitude: 24.0152639))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8296588, longitude: 24.0168518))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8301571, longitude: 24.0169805))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8303786, longitude: 24.0171951))
        rect17.add(CLLocationCoordinate2D(latitude: 49.830517, longitude: 24.0164655))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8309322, longitude: 24.0161222))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8305446, longitude: 24.0151351))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8295204, longitude: 24.0137189))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8286345, longitude: 24.012689))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8276933, longitude: 24.0118307))
        rect17.add(CLLocationCoordinate2D(latitude: 49.8266413, longitude: 24.0106719))
        
        rect18.add(CLLocationCoordinate2D(latitude: 49.8557194, longitude: 24.0454034))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8550553, longitude: 24.0449743))
        rect18.add(CLLocationCoordinate2D(latitude: 49.854336, longitude: 24.043601))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8540593, longitude: 24.0419702))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8534505, longitude: 24.0405111))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8523991, longitude: 24.0411119))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8513476, longitude: 24.0431718))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8509049, longitude: 24.0442876))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8509602, longitude: 24.0470342))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8510709, longitude: 24.0494375))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8514583, longitude: 24.0506391))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8522331, longitude: 24.0510682))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8518457, longitude: 24.0535573))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8510156, longitude: 24.0569906))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8511263, longitude: 24.0581922))
        rect18.add(CLLocationCoordinate2D(latitude: 49.851569, longitude: 24.0606813))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8508495, longitude: 24.0629987))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8503515, longitude: 24.0661744))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8496874, longitude: 24.0710668))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8495767, longitude: 24.0746717))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8499641, longitude: 24.0763883))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8500748, longitude: 24.0786199))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8506835, longitude: 24.0786199))
        rect18.add(CLLocationCoordinate2D(latitude: 49.851901, longitude: 24.0776758))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8547787, longitude: 24.0763025))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8569368, longitude: 24.0746717))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8588735, longitude: 24.0724401))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8604227, longitude: 24.0707235))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8599801, longitude: 24.0665178))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8598141, longitude: 24.0635137))
        rect18.add(CLLocationCoordinate2D(latitude: 49.860893, longitude: 24.0634064))
        rect18.add(CLLocationCoordinate2D(latitude: 49.862138, longitude: 24.063385))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8625253, longitude: 24.0617971))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8625806, longitude: 24.0593938))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8630786, longitude: 24.0556173))
        rect18.add(CLLocationCoordinate2D(latitude: 49.864683, longitude: 24.0552739))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8646277, longitude: 24.0529565))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8621933, longitude: 24.0508966))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8584308, longitude: 24.0477208))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8557194, longitude: 24.0454034))
        
        rect18.add(CLLocationCoordinate2D(latitude: 49.8289846, longitude: 24.0454892))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8305348, longitude: 24.0484933))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8297043, longitude: 24.0509824))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8295936, longitude: 24.053214))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8286524, longitude: 24.0564756))
        rect18.add(CLLocationCoordinate2D(latitude: 49.829206, longitude: 24.058278))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8311992, longitude: 24.0605096))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8329155, longitude: 24.0608529))
        rect18.add(CLLocationCoordinate2D(latitude: 49.833912, longitude: 24.0605096))
        rect18.add(CLLocationCoordinate2D(latitude: 49.834687, longitude: 24.058278))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8343549, longitude: 24.057248))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8349638, longitude: 24.0536432))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8338566, longitude: 24.0520124))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8319743, longitude: 24.0517549))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8314206, longitude: 24.0510682))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8322511, longitude: 24.0477208))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8315867, longitude: 24.0452318))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8300365, longitude: 24.0440301))
        rect18.add(CLLocationCoordinate2D(latitude: 49.8289846, longitude: 24.0454892))
        
        rect19.add(CLLocationCoordinate2D(latitude: 49.8614994, longitude: 24.0079519))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8599501, longitude: 24.0087244))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8590648, longitude: 24.0101835))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8578475, longitude: 24.0113851))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8572111, longitude: 24.0122864))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8564365, longitude: 24.0140459))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8556341, longitude: 24.0144751))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8547487, longitude: 24.0144751))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8552467, longitude: 24.0166637))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8559661, longitude: 24.0194532))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8567685, longitude: 24.0215561))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8585115, longitude: 24.0206549))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8601715, longitude: 24.0197536))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8618314, longitude: 24.0189382))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8631592, longitude: 24.0182516))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8647084, longitude: 24.0174791))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8657319, longitude: 24.0167496))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8666171, longitude: 24.0161917))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8672257, longitude: 24.0157196))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8663128, longitude: 24.014003))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8656489, longitude: 24.0125009))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8652617, longitude: 24.0105268))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8647084, longitude: 24.007909))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8640445, longitude: 24.0067503))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8628273, longitude: 24.0070507))
        rect19.add(CLLocationCoordinate2D(latitude: 49.8614994, longitude: 24.0079519))
        
        
        
        
        rect20.add(CLLocationCoordinate2D(latitude: 49.8509049, longitude: 24.0442876))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8502659, longitude: 24.0433021))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8496614, longitude: 24.0424776))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8494244, longitude: 24.0423113))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8491806, longitude: 24.0422523))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8487205, longitude: 24.042263))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8486193, longitude: 24.0423689))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8485527, longitude: 24.0425607))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8485441, longitude: 24.0430945))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8486098, longitude: 24.0439796))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8486583, longitude: 24.0445429))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8486721, longitude: 24.0449506))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8486583, longitude: 24.0450579))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8485822, longitude: 24.0451115))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8485139, longitude: 24.0451323))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8484456, longitude: 24.0450887))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8483989, longitude: 24.0446475))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8482501, longitude: 24.0441513))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8476413, longitude: 24.0428638))
        rect20.add(CLLocationCoordinate2D(latitude: 49.847586, longitude: 24.0418768))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8466728, longitude: 24.0410614))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8463683, longitude: 24.0419197))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8458702, longitude: 24.043765))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8458425, longitude: 24.0455246))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8460363, longitude: 24.046855))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8458149, longitude: 24.0474129))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8458979, longitude: 24.0491295))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8467558, longitude: 24.0498161))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8476136, longitude: 24.0499878))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8484438, longitude: 24.0504169))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8496614, longitude: 24.0513181))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8503255, longitude: 24.0520477))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8502459, longitude: 24.0535981))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8501041, longitude: 24.0551376))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8501802, longitude: 24.0558886))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8503255, longitude: 24.0565538))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8506852, longitude: 24.0570259))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8510969, longitude: 24.0565968))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8513286, longitude: 24.0556433))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8515569, longitude: 24.0546897))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8518457, longitude: 24.0535573))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8519857, longitude: 24.052611))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8522331, longitude: 24.0510682))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8514583, longitude: 24.0506391))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8510709, longitude: 24.0494375))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8509602, longitude: 24.0470342))
        rect20.add(CLLocationCoordinate2D(latitude: 49.8509049, longitude: 24.0442876))
        
        rect21.add(CLLocationCoordinate2D(latitude: 49.8102617, longitude: 23.9998258))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8073814, longitude: 23.9993108))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8072153, longitude: 24.0005982))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8070768, longitude: 24.0028298))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8069383, longitude: 24.0039456))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8064121, longitude: 24.0051902))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8063567, longitude: 24.0064347))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8080738, longitude: 24.0068639))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8079076, longitude: 24.0075505))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8083231, longitude: 24.007808))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8097909, longitude: 24.0080226))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8101509, longitude: 24.0041173))
        rect21.add(CLLocationCoordinate2D(latitude: 49.8102617, longitude: 23.9998258))
        
        rect22.add(CLLocationCoordinate2D(latitude: 49.8187232, longitude: 24.0754966))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8188963, longitude: 24.0764514))
        rect22.add(CLLocationCoordinate2D(latitude: 49.819104, longitude: 24.0773312))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8182179, longitude: 24.0776745))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8182594, longitude: 24.0782324))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8175257, longitude: 24.0785328))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8179687, longitude: 24.0790478))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8182456, longitude: 24.0793268))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8180518, longitude: 24.0795628))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8206545, longitude: 24.0792302))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8210076, longitude: 24.0795092))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8212221, longitude: 24.0796594))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8212498, longitude: 24.0787045))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8216582, longitude: 24.0787474))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8227103, longitude: 24.0787474))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8232641, longitude: 24.0788332))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8229734, longitude: 24.0796486))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8237763, longitude: 24.0803138))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8246761, longitude: 24.0808074))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8253405, longitude: 24.080979))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8257835, longitude: 24.0814511))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8263926, longitude: 24.0818159))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8266417, longitude: 24.08276))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8268909, longitude: 24.0827385))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8273477, longitude: 24.0797774))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8277068, longitude: 24.0774344))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8279429, longitude: 24.0766553))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8283436, longitude: 24.0754174))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8293402, longitude: 24.0748166))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8299569, longitude: 24.0751318))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8303514, longitude: 24.0752927))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8308627, longitude: 24.0754603))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8312856, longitude: 24.0759257))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8317209, longitude: 24.0763186))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8324552, longitude: 24.0769772))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8328427, longitude: 24.0731148))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8328704, longitude: 24.0718702))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8333964, longitude: 24.0677933))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8320677, longitude: 24.0667633))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8319569, longitude: 24.0658192))
        rect22.add(CLLocationCoordinate2D(latitude: 49.831514, longitude: 24.0656046))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8309604, longitude: 24.0660767))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8305175, longitude: 24.0662483))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8304898, longitude: 24.0670208))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8298531, longitude: 24.0677074))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8291056, longitude: 24.0682868))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8287042, longitude: 24.0683726))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8285243, longitude: 24.0678576))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8282613, longitude: 24.0676216))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8277076, longitude: 24.0677289))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8274169, longitude: 24.0681581))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8270985, longitude: 24.0687374))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8268078, longitude: 24.0692309))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8263372, longitude: 24.0696601))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8253682, longitude: 24.0703038))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8247038, longitude: 24.0708617))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8246207, longitude: 24.0728787))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8243438, longitude: 24.0738229))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8234579, longitude: 24.0739516))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8227103, longitude: 24.0739087))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8218243, longitude: 24.0739087))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8211045, longitude: 24.0743379))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8204953, longitude: 24.0755824))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8199692, longitude: 24.0753249))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8194985, longitude: 24.0748528))
        rect22.add(CLLocationCoordinate2D(latitude: 49.8187232, longitude: 24.0754966))
        
        rect23.add(CLLocationCoordinate2D(latitude: 49.8740418, longitude: 23.9842223))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8735898, longitude: 23.9836496))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8730919, longitude: 23.9854521))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8717643, longitude: 23.9889711))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8708792, longitude: 23.9893145))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8691643, longitude: 23.9899153))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8679472, longitude: 23.9907307))
        rect23.add(CLLocationCoordinate2D(latitude: 49.867145, longitude: 23.9912886))
        rect23.add(CLLocationCoordinate2D(latitude: 49.867228, longitude: 23.9923185))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8670067, longitude: 23.9938206))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8669791, longitude: 23.9950222))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8668684, longitude: 23.9961809))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8664811, longitude: 23.9985842))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8668961, longitude: 23.9993566))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8669791, longitude: 24.0002579))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8669237, longitude: 24.0016312))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8668408, longitude: 24.0036482))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8668961, longitude: 24.0055794))
        rect23.add(CLLocationCoordinate2D(latitude: 49.867145, longitude: 24.0066523))
        rect23.add(CLLocationCoordinate2D(latitude: 49.867311, longitude: 24.0079397))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8682515, longitude: 24.0078539))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8694132, longitude: 24.0063518))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8697451, longitude: 24.0065664))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8699941, longitude: 24.0085405))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8706026, longitude: 24.0071672))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8719579, longitude: 24.0068239))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8731196, longitude: 24.0069527))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8738387, longitude: 24.0071672))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8743642, longitude: 24.0074676))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8740876, longitude: 24.0096992))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8744195, longitude: 24.0095705))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8748067, longitude: 24.0073818))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8753875, longitude: 24.0077681))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8761066, longitude: 24.0080255))
        rect23.add(CLLocationCoordinate2D(latitude: 49.876632, longitude: 24.0061373))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8772405, longitude: 24.0043777))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8779872, longitude: 24.0033478))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8785264, longitude: 24.0025968))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8783009, longitude: 24.0020751))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8778627, longitude: 24.0013308))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8774479, longitude: 24.0007085))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8770192, longitude: 23.9999789))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8764661, longitude: 23.999185))
        rect23.add(CLLocationCoordinate2D(latitude: 49.875913, longitude: 23.9982838))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8753322, longitude: 23.9972753))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8749268, longitude: 23.9966677))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8739312, longitude: 23.9928912))
        rect23.add(CLLocationCoordinate2D(latitude: 49.873977, longitude: 23.9906877))
        rect23.add(CLLocationCoordinate2D(latitude: 49.8740418, longitude: 23.9842223))
        
        
        
        // Create the polygon, and assign it to the map.
        let polygon = GMSPolygon(path: rect1)
        polygon.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon.strokeColor = .yellow
        polygon.strokeWidth = 1
        polygon.map = mapView
        
        let polygon2 = GMSPolygon(path: rect2)
        polygon2.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon2.strokeColor = .yellow
        polygon2.strokeWidth = 1
        polygon2.map = mapView
        
        let polygon3 = GMSPolygon(path: rect3)
        polygon3.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon3.strokeColor = .red
        polygon3.strokeWidth = 1
        polygon3.map = mapView
        
        let polygon4 = GMSPolygon(path: rect4)
        polygon4.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon4.strokeColor = .yellow
        polygon4.strokeWidth = 1
        polygon4.map = mapView
        
        let polygon6 = GMSPolygon(path: rect6)
        polygon6.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2);
        polygon6.strokeColor = .yellow
        polygon6.strokeWidth = 1
        polygon6.map = mapView
        
//        let polygon8 = GMSPolygon(path: rect8)
//        polygon8.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
//        polygon8.strokeColor = .yellow
//        polygon8.strokeWidth = 1
//        polygon8.map = mapView
        
        let polygon9 = GMSPolygon(path: rect9)
        polygon9.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon9.strokeColor = .yellow
        polygon9.strokeWidth = 1
        polygon9.map = mapView
        
        let polygon10 = GMSPolygon(path: rect10)
        polygon10.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon10.strokeColor = .yellow
        polygon10.strokeWidth = 1
        polygon10.map = mapView
        
        let polygon11 = GMSPolygon(path: rect11)
        polygon11.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon11.strokeColor = .yellow
        polygon11.strokeWidth = 1
        polygon11.map = mapView
        
        let polygon12 = GMSPolygon(path: rect12)
        polygon12.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon12.strokeColor = .yellow
        polygon12.strokeWidth = 1
        polygon12.map = mapView
        
        let polygon13 = GMSPolygon(path: rect13)
        polygon13.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon13.strokeColor = .yellow
        polygon13.strokeWidth = 1
        polygon13.map = mapView
        
        let polygon14 = GMSPolygon(path: rect14)
        polygon14.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon14.strokeColor = .yellow
        polygon14.strokeWidth = 1
        polygon14.map = mapView
        
        let polygon15 = GMSPolygon(path: rect15)
        polygon15.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon15.strokeColor = .red
        polygon15.strokeWidth = 1
        polygon15.map = mapView
        
        
        let polygon16 = GMSPolygon(path: rect16)
        polygon16.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon16.strokeColor = .red
        polygon16.strokeWidth = 1
        polygon16.map = mapView
        
        let polygon17 = GMSPolygon(path: rect17)
        polygon17.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon17.strokeColor = .yellow
        polygon17.strokeWidth = 1
        polygon17.map = mapView
        
        let polygon18 = GMSPolygon(path: rect18)
        polygon18.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon18.strokeColor = .red
        polygon18.strokeWidth = 1
        polygon18.map = mapView
        
        let polygon19 = GMSPolygon(path: rect19)
        polygon19.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon19.strokeColor = .yellow
        polygon19.strokeWidth = 1
        polygon19.map = mapView
       
        let polygon20 = GMSPolygon(path: rect20)
        polygon20.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon20.strokeColor = .yellow
        polygon20.strokeWidth = 1
        polygon20.map = mapView
        
        let polygon21 = GMSPolygon(path: rect21)
        polygon21.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon21.strokeColor = .yellow
        polygon21.strokeWidth = 1
        polygon21.map = mapView
        
        let polygon22 = GMSPolygon(path: rect22)
        polygon22.fillColor = UIColor(red: 1, green: 1, blue: 0, alpha: 0.3);
        polygon22.strokeColor = .yellow
        polygon22.strokeWidth = 1
        polygon22.map = mapView
        
        let polygon23 = GMSPolygon(path: rect23)
        polygon23.fillColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
        polygon23.strokeColor = .red
        polygon23.strokeWidth = 1
        polygon23.map = mapView
        
        
    }
}





    
   
