//
//  Player.swift
//  OperalHouseShowdown
//
//  Created by Sharon's Mac on 6/26/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import Foundation

class Player: Performer {
    
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, octave: Int, attackPwr: Int) {
        self.init(startingOctave: octave, attackPwr: attackPwr)
        _name = name
        
    }
    
    func currentStatus() -> String {
        return "\(name): \(octave) OVA"
        
    }
    
}
