//
//  Performer.swift
//  OperalHouseShowdown
//
//  Created by Sharon's Mac on 6/23/16.
//  Copyright © 2016 Sharon's Mac. All rights reserved.
//

import Foundation

class Performer {
    

    var octave: Int = 100
    var attackPwr: Int = 10
    
    // OVA is the abbreviation for octave
    
    init() {
        
    }
    
    init(startingOctave: Int, attackPwr: Int) {
        self.octave = startingOctave
        self.attackPwr = attackPwr
    }
    
    func losesVoiceBy(attackPwr: Int) -> Bool {
        self.octave -= attackPwr
        return self.stillHasVoice()
    }
    
    func stillHasVoice() -> Bool {
        return self.octave > 0
    }
}



