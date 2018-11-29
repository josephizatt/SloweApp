//
//  News.swift
//  SloweApp
//
//  Created by Joseph Izatt on 29/11/2018.
//  Copyright © 2018 Joseph Izatt. All rights reserved.
//

import UIKit

class Items: Codable {
    let items: [News]
    
    init(items: [News]) {
        self.items = items
    }
}

class News: Codable {
    
    let title: String
    let excerpt: String
    let assetUrl: String
    
    init(title: String, excerpt: String, assetUrl: String) {
        self.title = title
        self.excerpt = excerpt
        self.assetUrl = assetUrl
    }


}
