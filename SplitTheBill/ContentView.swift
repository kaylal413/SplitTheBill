//
//  ContentView.swift
//  SplitTheBill
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var total : Double = 0.0
    @State var tax: Double = 0.0
    
    var body: some View {
        NavigationStack{
            VStack {
                Image("logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300.0)
                Spacer()
                VStack{
                    NavigationLink(destination: TipScreen(total: $total, tax: $tax)) {
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
        @State static var total: Double = 0.0
        @State static var tax: Double = 0.0
        static var previews: some View {
            ContentView(total: total, tax: tax)
        }
    }
}
