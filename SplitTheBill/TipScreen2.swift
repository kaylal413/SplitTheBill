//
//  TipScreen2.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct TipScreen2: View {

    @Binding var total: Double
    @Binding var tax: Double
    
    @State var totalWithTip = Double()      // <total with tip>
    @State var customPercentnum = ""
    @State var customExtraAmt = Double()
 

    
    var body: some View {
        
        var totalWithoutTip = total + tax    // <total without tip>
        
        NavigationStack{
            VStack{                                             //really big vstack
                HStack{                                   //tip + icon hstack
                    Text("Tip")
                        .fontWeight(.bold)
                        .font(.title)
                    Image("tipicon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0)
                }
                
                
                var tenPercentAmt = totalWithoutTip * 1.1
                var fifteenPercentAmt = totalWithoutTip * 1.15
                var eighteenPercentAmt = totalWithoutTip * 1.18
                var twentyPercentAmt = totalWithoutTip * 1.2
                
                VStack(alignment: .trailing){           //total w tip + total wo tip hstack
                    Text("Total without tip: $\(totalWithoutTip, specifier: "%.2f")")
                        .font(.title)

                    Text("Total with tip: $\(totalWithTip, specifier: "%.2f")")
                        .font(.title)
                        .fontWeight(.heavy)


                }
                .padding(.bottom)
                
                VStack{                                 //vstack with 2 rows of hstacks
                    HStack{                             //hstack with 2 squares
                        Spacer()
                        ZStack{                     //10%
                            
                            Button {
                                totalWithTip = tenPercentAmt
                                customExtraAmt = 0

                            } label: {
                                Text("10%")
                                    .font(.title)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 150)
                                    .background(.pink)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            Text("$\(tenPercentAmt - totalWithoutTip, specifier: "%.2f")")
                                .padding(.top, 100.0)
                        }
                        
                        Spacer()
                        
                        ZStack{                     //15%
                            
                            Button {
                                totalWithTip = fifteenPercentAmt
                                customExtraAmt = 0

                            } label: {
                                Text("15%")
                                    .font(.title)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 150)
                                    .background(.pink)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            Text("$\(fifteenPercentAmt - totalWithoutTip, specifier: "%.2f")")
                                .padding(.top, 100.0)
                        }
                        
                        Spacer()
                        
                    }
                    .padding(.bottom)
                    
                    HStack{                         //hstack with 2 squares
                        Spacer()
                        ZStack{                     //18%
                            
                            Button {
                                totalWithTip = eighteenPercentAmt
                                customExtraAmt = 0

                            } label: {
                                Text("18%")
                                    .font(.title)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 150)
                                    .background(.pink)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            Text("$\(eighteenPercentAmt - totalWithoutTip, specifier: "%.2f")")
                                .padding(.top, 100.0)
                        }
                        
                        Spacer()
                        ZStack{                     //20%
                            
                            Button {
                                totalWithTip = twentyPercentAmt
                                customExtraAmt = 0

                            } label: {
                                Text("20%")
                                    .font(.title)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 150)
                                    .background(.pink)
                                    .cornerRadius(25)
                            }
                            .buttonStyle(.plain)
                            Text("$\(twentyPercentAmt - totalWithoutTip, specifier: "%.2f")")
                                .padding(.top, 100.0)
                        }
                        Spacer()
                    }
                    .padding(.bottom)
                    
                    VStack{
                        HStack{                     //custom %
                            Spacer()
                            Text("Custom %")
                                .font(.title)
                            TextField("", text: $customPercentnum)
                                .padding(5)
                                .frame(width: 50.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                                .padding(.trailing, 10.0)
                            
                            Button("Ok") {
                                var customPercent = (Double(customPercentnum)! * 0.01)
                                totalWithTip = (customPercent + 1) * totalWithoutTip
                                customExtraAmt = totalWithTip - totalWithoutTip
                            }
                            .tint(.pink)
                            .buttonStyle(.borderedProminent)
                            Spacer()
                        }
                        HStack{                     //custom % actual amount
                            Spacer()
                            Text("Custom % amount: ")
                                .font(.headline)
                            Text("$\(customExtraAmt, specifier: "%.2f")")
                                .font(.headline)
                            Spacer()

                            }
                            .tint(.pink)
                            .buttonStyle(.borderedProminent)
                            Spacer()
                        }
                    }
                    .padding()
                    
                NavigationLink(destination: endScreen2(total: $total, tax: $tax)) {
                    Text("Next")
                }
                    //end of tipping buttons vstack below
                }
            }

        }
    }


struct TipScreen2_Previews: PreviewProvider {
    @State static var total: Double = 0.0
    @State static var tax: Double = 0.0
    static var previews: some View {
        TipScreen2(total: $total, tax: $tax)
    }
}
