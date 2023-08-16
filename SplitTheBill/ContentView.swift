//
//  ContentView.swift
//  SplitTheBill
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0)
                Spacer()
                VStack{
                    NavigationLink(destination: TipScreen()) {
                        Image("tip")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                    }
                    .padding(.bottom)
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image("meal")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                    }
                    .padding(.bottom)
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image("percent")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                    }
                    .padding(.bottom)
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Image("budgeting")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300.0)
                    }
                    .padding(.bottom)
                }
                Spacer()
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
