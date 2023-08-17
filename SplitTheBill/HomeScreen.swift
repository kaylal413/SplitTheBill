//
//  HomeScreen.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//


import SwiftUI

struct HomeScreen: View {

    var body: some View {
        
        NavigationStack {
            
           Spacer()
            Image("logo")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 325.0)
            Spacer()
            
            
            NavigationLink(destination: totalAndTax(total: 0.0, tax: 0.0)) {
                Text("Start")
                    .font(.title2)
                
            }
        }
    }
}
