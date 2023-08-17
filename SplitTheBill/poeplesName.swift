//
//  poeplesName.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct poeplesName: View {
    @State var names: [String] = []
    @State var counter = 0
    @Binding var peopleAmount: Int
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Enter the names of the \(peopleAmount) people in your party")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Form {
                    
                    
                    Section {
                        ForEach(0..<names.count, id: \.self) { index in
                            TextField("Enter Name", text: self.$names[index])
                        }
                        Button(action:{
                            self.names.append("")
                        }) {
                            Text("Add Person")
                                .foregroundColor(Color.red)
                               
                                
                        }
        
                    }
                }
                NavigationLink(destination: ContentView()) {
                    Text("Next")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
            }
                .buttonStyle(.borderedProminent)
                .padding()
                .tint(Color.red)
            
        }
        
            
        }
        
    }
}
        
        
   
struct poeplesName_Previews: PreviewProvider {
    
    @State static var peopleAmount: Int = 0
    
    static var previews: some View {
        poeplesName(peopleAmount: $peopleAmount)
    }
}
