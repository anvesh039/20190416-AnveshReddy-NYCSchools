//
//  DetailCells.swift
//  20190416-AnveshReddy-NYCSchools
//
//  Created by Anvesh on 4/17/19.
//  Copyright © 2019 Anvesh. All rights reserved.
//

import Foundation
import UIKit

class DetailCells {
    /// This function get the selected High School name's  average sat scores
    ///
    /// - Returns: UITableViewCell
    static func tableViewCellWithSATScore(_ tableView: UITableView, HSWithSatScore: NYCHighSchools) -> UITableViewCell{
        let schoolWithSATScoresCell = tableView.dequeueReusableCell(withIdentifier: DetailConstants.Cells.schoolWithSATScoreCellIdentifier) as! SatScoresTableViewCell
        
        schoolWithSATScoresCell.hsNameLbl.text = HSWithSatScore.schoolName
        
        //For some high school, there is no information of the average SAT score, display the static mesaage to the customers
        schoolWithSATScoresCell.satReadingAvgScoreLbl.text = (HSWithSatScore.satCriticalReadingAvgScore != nil) ?  (DetailConstants.averageSATReadingScore + HSWithSatScore.satCriticalReadingAvgScore!) : DetailConstants.noSATScoreInfomationText
        
        // Sets the Math Average Score
        schoolWithSATScoresCell.satMathAvgScoreLbl.isHidden = (HSWithSatScore.satMathAvgScore != nil) ? false : true
        schoolWithSATScoresCell.satMathAvgScoreLbl.text = (HSWithSatScore.satMathAvgScore != nil) ? (DetailConstants.averageSATMathScore + HSWithSatScore.satMathAvgScore!) : nil
        
        // Sets the Writing Average Score
        schoolWithSATScoresCell.satWritingAvgScoreLbl.isHidden =  (HSWithSatScore.satWritinAvgScore != nil) ? false : true
        schoolWithSATScoresCell.satWritingAvgScoreLbl.text = (HSWithSatScore.satWritinAvgScore != nil) ? (DetailConstants.averageSATWritingScore + HSWithSatScore.satWritinAvgScore!) : nil
        
        return schoolWithSATScoresCell
    }
    
    /// This function get the selected high school's overview
    ///
    /// - Returns: UITableViewCell
    static func tableViewCellWithOverView(_ tableView: UITableView, HSWithSatScore: NYCHighSchools) -> UITableViewCell{
        let schoolWithOverviewCell = tableView.dequeueReusableCell(withIdentifier: DetailConstants.Cells.schoolOverviewCellIdentifier) as! OverviewTableViewCell
        
        schoolWithOverviewCell.hsOverviewLbl.text = HSWithSatScore.overviewParagraph
        
        return schoolWithOverviewCell
    }
    
    /// This function get the high school contact information with address, tel and website.
    ///
    /// - Returns: UITableViewCell
    static func tableViewCellWithContactInfo(_ tableView: UITableView, HSWithSatScore: NYCHighSchools) -> UITableViewCell{
        let schoolWithContactCell = tableView.dequeueReusableCell(withIdentifier: DetailConstants.Cells.schoolWithContactCellIdentifier) as! ContactTableViewCell
        
        schoolWithContactCell.hsAddressLbl.text = "Address: " + Utilities.getCompleteAddressWithoutCoordinate(HSWithSatScore.schoolAddress)
        schoolWithContactCell.hsPhoneLbl.text = (HSWithSatScore.schoolTelephoneNumber != nil) ? "Tel:  " + HSWithSatScore.schoolTelephoneNumber! : ""
        schoolWithContactCell.hsWebsiteLbl.text = HSWithSatScore.schoolWebsite
        
        return schoolWithContactCell
    }
    
    /// This function get the High School's location with annotaion on the map
    ///
    /// - Returns: UITableViewCell
    static func tableViewCellWithAddress(_ tableView: UITableView, HSWithSatScore: NYCHighSchools) -> UITableViewCell{
        let schoolWithAddressCell = tableView.dequeueReusableCell(withIdentifier: DetailConstants.Cells.schoolWithAddressCellIdentifier) as! AddressTableViewCell
        
        if let highSchoolCoordinate = Utilities.getCoodinateForSelectedHighSchool(HSWithSatScore.schoolAddress){
            schoolWithAddressCell.addHSAnnotaionWithCoordinates(highSchoolCoordinate)
        }
        return schoolWithAddressCell
    }
}
