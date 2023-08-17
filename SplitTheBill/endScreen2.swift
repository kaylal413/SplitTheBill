//
//  endScreen2.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct endScreen2: View {
    @Binding var total: Double
    @Binding var tax: Double
    var body: some View {
        VStack{
            Text("Here is is what everyone owes!!")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            Text("Kim Kardashian owes $77.33")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .padding()
                .tint(Color.gray)
            Text("Joe Biden owes $77.33")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .padding()
                .tint(Color.gray)
            Text("Micheal Phelps owes $77.33")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .padding()
                .tint(Color.gray)
            Text("Yaniv Inbar owes $77.33")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .padding()
                .tint(Color.gray)
            Text("Ozzil owes $77.33")
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .padding()
                .tint(Color.gray)
            }
        }
        
    }


struct endScreen2_Previews: PreviewProvider {
    @State static var total: Double = 0.0
    @State static var tax: Double = 0.0
    static var previews: some View {
        endScreen2(total: $total, tax: $tax)
    }
}
