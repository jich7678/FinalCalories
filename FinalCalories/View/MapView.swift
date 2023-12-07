//
//  Map.swift
//  FinalCalories
//
//  Created by Sam Chen on 11/2/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    var markets: [Market] = [kingSoopersBoulder, kingSoopersLafayette, wholeFoods, sprouts, safeway, target, walmart]
    
    var body: some View {
        NavigationView {
            Map {
                ForEach(markets) { market in
                    Annotation(market.name, coordinate: market.location) {
                        NavigationLink {
                            //MarketView(market: market)
                            WebView(url: market.url)
                        }  label: {
                            Image(systemName: "storefront.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .mapControls {
                MapUserLocationButton()
                MapCompass()
            }
        }
    }
}

#Preview {
    MapView()
}
