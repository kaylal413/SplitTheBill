//
//  percent.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct percent: View {
    @Binding var total: Double
    @Binding var tax: Double
    

    @State var kim1: String =  ""
    @State var kim: Double = 0.0
    
    @State var joe1: String =  ""
    @State var joe: Double = 0.0
    
    @State var mike1: String =  ""
    @State var mike: Double = 0.0
    
    @State var yaniv1: String =  ""
    @State var yaniv: Double = 0.0
    
    @State var lizzo1: String =  ""
    @State var lizzo: Double = 0.0
  
    @State var Lizzo = ""
    @State var Kim = ""
    @State var Joe = ""
    @State var Mike = ""
    @State var Yaniv = ""
    

    @State var NextTitle = ""
    
    
    //Total= Double(string)
    var body: some View {

        
        var emptyy = ""
        
        var twenty = "77.33"
        var realtotal = total + tax
        
        NavigationStack{
            VStack {
                
                HStack{
                Text("Split By Percent")
                    .fontWeight(.bold)
                    .font(.title)
                
                Image("percent 1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 65.0)
            }
            
            .padding()
                
                
                Text("Enter each person's percentage")
                    .padding(.bottom)
                    .fontWeight(.semibold)
                Group{
                    HStack{
                        Text("Kim Kardashian")
                            .padding(.trailing)
                        TextField("", text: $kim1)
                            .padding(5)
                            .frame(width: 75.0)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                            .multilineTextAlignment(.center)
                        Button("Ok") {
                   //         var kimpercent = (Double(kim1)! * 0.01)
                     //       Kim = (kimpercent + 1) * realtotal
                          
                            Kim = twenty
                        }
                        .tint(.pink)
                        .buttonStyle(.borderedProminent)
                    }
            
                    
                    Text("Kim Kardashian owes $\(Kim)")
                        .padding()
                }
                Group{
                    HStack{
                        Text("Joe Biden")
                            .padding(.trailing, 60)

                        TextField("", text: $joe1)
                            .padding(5)
                            .frame(width: 75.0)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                            .multilineTextAlignment(.center)
                        Button("Ok") {
                            Joe = twenty
                        }
                        .tint(.pink)
                        .buttonStyle(.borderedProminent)
                    }
                    Text("Joe Biden owes $\(Joe)")
                        .padding()
                }
                Group{
                    HStack{
                        Text("Micheal Phelps")
                            .padding(.trailing, 20)
                        TextField("", text: $mike1)
                            .padding(5)
                            .frame(width: 75.0)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                            .multilineTextAlignment(.center)
                        Button("Ok") {
                            Mike = twenty
                        }
                        .tint(.pink)
                        .buttonStyle(.borderedProminent)
                    }
                    Text("Micheal Phelps owes $\(Mike)")
                        .padding()
                }
                HStack{
                    Text("Yaniv Inbar")
                        .padding(.trailing, 50)
                    TextField("", text: $yaniv1)
                        .padding(5)
                        .frame(width: 75.0)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .multilineTextAlignment(.center)
                    Button("Ok") {
                        Yaniv = twenty
                    }
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                }
                Text("Yaniv Inbar owes $\(Yaniv)")
                    .padding()
                HStack{
                    Text("Ozzil")
                        .padding(.trailing, 95)
                    TextField("", text: $lizzo1)
                        .padding(5)
                        .frame(width: 75.0)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                        .multilineTextAlignment(.center)
                    Button("Ok") {
                        Lizzo = twenty
                    }
                    .tint(.pink)
                    .buttonStyle(.borderedProminent)
                }
                Text("Ozzil owes $\(Lizzo)")
                    .padding()
                
                
        
            
            
            

                NavigationLink(destination: TipScreen2(total: $total, tax: $tax) ) {
                Text("Next")
            }
        }
           
        }
    }
    
    struct percent_Previews: PreviewProvider {
        @State static var total: Double = 0.0
        @State static var tax: Double = 0.0
        static var previews: some View {
            percent(total: $total, tax: $tax)
        }
    }
}
