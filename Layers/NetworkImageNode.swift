//
//  NetworkImageNode.swift
//  Layers
//
//  Created by John Wong on 11/27/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation

class NetworkImageNode: ASImageNode {
    
    override init() {
        super.init(layerClass:NSClassFromString("Layers.AnimatedContentsDisplayLayer"))
    }
    
}