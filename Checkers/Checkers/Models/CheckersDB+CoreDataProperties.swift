//
//  CheckersDB+CoreDataProperties.swift
//  
//
//  Created by mac on 23.06.22.
//
//

import Foundation
import CoreData


extension CheckersDB {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CheckersDB> {
        return NSFetchRequest<CheckersDB>(entityName: "CheckersDB")
    }

    @NSManaged public var date: String?
    @NSManaged public var nameWhitePlayer: String?
    @NSManaged public var nameGrayPlayer: String?
    @NSManaged public var scoreGrayPlayer: Int64
    @NSManaged public var scoreWhitePlayer: Int64
    @NSManaged public var timer: String?
    
    func getMapped() -> Checkers {
        return Checkers(nameWhitePlayer: nameWhitePlayer ?? "",
                        nameGrayPlayer: nameGrayPlayer ?? "",
                        timer: timer ?? "",
                        scoreGrayPlayer: Int(scoreGrayPlayer),
                        scoreWhitePlayer: Int(scoreWhitePlayer),
                        date: date ?? "")
    }
    
    func setValues(checkers: [Checkers]) {
        self.nameWhitePlayer = checkers.first?.nameWhitePlayer ?? ""
        self.nameGrayPlayer = checkers.first?.nameGrayPlayer ?? ""
        self.timer = checkers.first?.timer ?? ""
        self.scoreGrayPlayer = Int64(checkers.first?.scoreGrayPlayer ?? 0)
        self.scoreWhitePlayer = Int64(checkers.first?.scoreWhitePlayer ?? 0)
        self.date = checkers.first?.date ?? ""
    }

}
