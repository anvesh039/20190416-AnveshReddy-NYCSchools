//
//  Constants.swift
//  20190416-AnveshReddy-NYCSchools
//
//  Created by Anvesh on 4/16/19.
//  Copyright © 2019 Anvesh. All rights reserved.
//

import Foundation

struct Constants {
    static let highSchoolsURL = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
    static let schoolWithSATScoreURL = "https://data.cityofnewyork.us/resource/f9bf-2cp4.json"
    static let hsCellIdentifier = "nycHSCell"
    static let HSWithSATScoreSegue = "HSWithSATScoreSegue"
}

struct DetailConstants {
    struct Cells {
        static let schoolWithSATScoreCellIdentifier =  "HSSATScoresTableViewCell"
        static let schoolOverviewCellIdentifier = "HSOverViewTableViewCell"
        static let schoolWithAddressCellIdentifier = "HSAddressTableViewCell"
        static let schoolWithContactCellIdentifier = "HSContactTableViewCell"
    }

    static let noSATScoreInfomationText = "There is no SAT score information for this high school"
    static let averageSATReadingScore = "SAT Average Critical Reading Score:  "
    static let averageSATMathScore = "SAT Average Math Score:   "
    static let averageSATWritingScore = "SAT Average Writing Score:   "
}
