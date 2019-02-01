//
//  DataBase.swift
//  AppSyncPlay
//
//  Created by Yuri Ramos on 26/10/18.
//  Copyright © 2018 SkidGames. All rights reserved.
//

import Foundation

struct ASData {
    var id: Int
    var name: String
}

class DataBase {
    static var schools : [ASData] = [ASData(id: 1, name: "ESCOLA UM"),
                                     ASData(id: 2, name: "ESCOLA DOIS"),
                                     ASData(id: 3, name: "ESCOLA TRES"),
                                     ASData(id: 4, name: "ESCOLA QUATRO"),
                                     ASData(id: 5, name: "ESCOLA CINCO"),]
    
    static var classrooms : [ASData] = [ASData(id: 1, name: "TURMA UM"),
                                        ASData(id: 2, name: "TURMA DOIS"),
                                        ASData(id: 3, name: "TURMA TRES"),
                                        ASData(id: 4, name: "TURMA QUATRO"),
                                        ASData(id: 5, name: "TURMA CINCO")]
    
    static var users : [ASData] = [ASData(id: 1, name: "Joaquim França"),
                                   ASData(id: 2, name: "Geraldo Figueira"),
                                   ASData(id: 3, name: "Janaina Pinto"),
                                   ASData(id: 4, name: "George Portugal"),
                                   ASData(id: 5, name: "Conceição Rosa"),]
}
