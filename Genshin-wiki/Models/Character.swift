//
//  Character.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import Foundation

struct Character: Decodable, Identifiable {
    var id:UUID?
    var name: String?
    var vision: String?
    var weapon: String?
    var nation: String?
    var affiliation: String?
    var rarity: Int?
    var constellation: String?
    var birthday: String?
    var description:String?
    var skillTalents:[Initiatives]?
    var passiveTalents:[Passives]?
    var constellations:[Constellations]?
    var vision_key: String?
    var weapon_type: String?
}

struct Initiatives: Decodable, Identifiable{
    var id:UUID?
    var name : String?
    var unlock : String?
    var description: String?
    var upgrades: [Damage]?
    var type: String?
}


struct Damage: Decodable, Identifiable{
    var id:UUID?
    var name : String?
    var value : String?
}

struct Passives: Decodable, Identifiable {
    var id:UUID?
    var name : String?
    var unlock : String?
    var description: String?
    var level: Int?
}

struct Constellations: Decodable, Identifiable {
    var id:UUID?
    var name : String?
    var unlock : String?
    var description : String?
    var level:Int?
}
