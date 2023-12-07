//
//  Markert.swift
//  FinalCalories
//
//  Created by Sam Chen on 12/7/23.
//

import Foundation
import MapKit

struct Market: Identifiable {
    var name: String
    var location: CLLocationCoordinate2D
    var url: URL
    let id = UUID()
}

let kingSoopersBoulder = Market(name: "King Soopers(Boulder)", location: CLLocationCoordinate2D(latitude: 39.983521, longitude: -105.251671), url: URL(string: "https://www.kingsoopers.com/weeklyad/shoppable")!)
let kingSoopersLafayette = Market(name: "King Soopers(Lafayette)", location: CLLocationCoordinate2D(latitude: 40.001630, longitude: -105.101770), url: URL(string: "https://www.kingsoopers.com/weeklyad/shoppable")!)
let wholeFoods = Market(name: "Whole Foods", location: CLLocationCoordinate2D(latitude: 39.982979, longitude: -105.248444), url: URL(string: "https://www.wholefoodsmarket.com/sales-flyer?store-id=10785")!)
let sprouts = Market(name: "Sprouts", location: CLLocationCoordinate2D(latitude: 39.999000, longitude: -105.254530), url: URL(string: "https://shop.sprouts.com/shop/coupons")!)
let safeway = Market(name: "Safeway", location: CLLocationCoordinate2D(latitude: 40.000019, longitude: -105.234062), url: URL(string: "https://www.safeway.com/shop/deals/promo-code-deals.html")!)
let target = Market(name: "Target", location: CLLocationCoordinate2D(latitude: 40.021426, longitude: -105.25633), url: URL(string: "https://www.target.com/c/grocery-deals/-/N-k4uyq")!)
let walmart = Market(name: "Walmart", location: CLLocationCoordinate2D(latitude: 40.00966, longitude: -105.10251), url: URL(string: "https://www.walmart.com/browse/grocery-deals/c2hlbGZfaWQ6MjQ1NTI0NQieie")!)
