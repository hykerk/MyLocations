//
//  Functions.swift
//  MyLocations
//
//  Created by Katellyn Hyker on 2/4/22.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}
