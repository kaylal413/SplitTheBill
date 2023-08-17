//
//  numOfPeople.swift
//  SplitTheBill
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct numOfPeople: View {

    
    @State var stringgg: String =  ""
    @State var peopleAmount: Int = 0
    

    
    var body: some View {
        
        
        NavigationStack{
                    VStack{
                        Spacer()
                        Text("How many people are in your party?")
                        HStack{
                            TextField("", text: $stringgg)
                                .padding(5)
                                .frame(width: 75.0)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                                )
                                .multilineTextAlignment(.center)
                            Button("Ok") {
                                let stringgg = Int(stringgg)!
                                peopleAmount = stringgg
                            }
                            .tint(.pink)
                            .buttonStyle(.borderedProminent)
                        }
                        Spacer()
                        NavigationLink(destination: poeplesName( peopleAmount: $peopleAmount)) {
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

