//
//  totalAndTax.swift
//  SplitTheBill
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct totalAndTax: View {
    @State var string: String =  ""
    @State var stringg: String =  ""
    @State var total: Double
    @State var tax: Double
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("How much was your total without tax?")
            
            HStack{
                Text("$")
                TextField("", text: $string)
                //enter only number and decimal point
                    .padding(5)
                    .frame(width: 150.0)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Button("Ok") {
                    var totalamt = Double(string)!
                    total = totalamt
                }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                .padding(.trailing, 10.0)
            }
            .padding(.bottom, 20.0)
            Text("How much was your tax?")
            
            HStack{
                Text("$")
                TextField("", text: $stringg)
                    .padding(5)
                    .frame(width: 150.0)
                    .multilineTextAlignment(.center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                Button("Ok") {
                    var taxamt = Double(stringg)!
                    tax = taxamt
                }
                .tint(.pink)
                .buttonStyle(.borderedProminent)
                
                
            }
            
            Spacer()
            NavigationLink(destination: numOfPeople()){
                Text("Next")
            }
            
            
        }
    }
}
    
    
    struct totalAndTax_Previews: PreviewProvider {
        
        
        static var previews: some View {
            totalAndTax(total: 0.0, tax: 0.0)
        }
    }


