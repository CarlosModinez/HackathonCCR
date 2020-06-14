//
//  Model.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation

class Model {
    static var shared = Model()
    let partners = [Partner(name: "Emirates Stadium", latitude: -25.542322, longitude: -51.246440),
                    Partner(name: "Stamford Bridge", latitude: -25.842522, longitude: -49.946362),
                    Partner(name: "White Hart Lane", latitude: -25.642722, longitude: -50.146732),
                    Partner(name: "Olympic Stadium", latitude: -25.742971, longitude: -52.946689),
                    Partner(name: "Old Trafford", latitude: -24.442922, longitude: -48.246906),
                    Partner(name: "Anfield", latitude: -24.942932, longitude: -51.646690)]
}

/*
Av. Prefeito Omar Sabbag, 1100 - Jardim Botânico
Curitiba - PR, 80210-000
-25.442932, -49.246360
*/
