//
//  numOfPeople.swift
//  SplitTheBill
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct numOfPeople: View {
    @State var total : Double = 0.0
    @State var tax : Double = 0.0
    
    @State var stringgg: String =  ""
    @State private var peopleAmount: Int = 0
    
    
    func saveee() {
            peopleAmount = Int(stringgg)!
        }
    
    var body: some View {
        
        
        NavigationStack{
                    VStack{
                        Spacer()
                        Text("How many people are in your party?")
                        TextField("", text: $stringgg)
                            .padding(5)
                            .frame(width: 75.0)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                                        )
                            .multilineTextAlignment(.center)

                        Spacer()
                        NavigationLink(destination: totalAndTax(total: $total, tax: $tax)) {
                            Text("Next")
                              
                        }

                        }
                    }
                }
    }


struct numOfPeople_Previews: PreviewProvider {
    static var previews: some View {
        numOfPeople()
    }
}
