//
//  AddressTableViewCell.swift
//  20190416-AnveshReddy-NYCSchools
//
//  Created by Anvesh on 4/16/19.
//  Copyright © 2019 Anvesh. All rights reserved.
//

import UIKit
import MapKit

class AddressTableViewCell: UITableViewCell {
    
    @IBOutlet var hsAddressMapView: MKMapView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func addHSAnnotaionWithCoordinates(_ hsCoordinates: CLLocationCoordinate2D) {
        
        let highSchoolAnnotation = MKPointAnnotation()
        highSchoolAnnotation.coordinate = hsCoordinates
        self.hsAddressMapView.addAnnotation(highSchoolAnnotation)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: highSchoolAnnotation.coordinate, span: span)
        let adjustRegion = self.hsAddressMapView.regionThatFits(region)
        self.hsAddressMapView.setRegion(adjustRegion, animated:true)
    }
}
