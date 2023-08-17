//
//  SplitByMeal.swift
//  SplitTheBill
//
//  Created by scholar on 8/17/23.
//

import SwiftUI

struct SplitByMeal: View {
    @Binding var total: Double
    @Binding var tax: Double
    @State var dishes: [String] = []
    @State var price: [String] = []
    
    
    var body: some View {
        VStack{
            
            HStack{
                Text("Split By Meal")
                    .fontWeight(.bold)
                    .font(.title)
                
                Image("meals")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70.0)
            }
           

            Form {
                Section {
                    ForEach(0..<dishes.count, id: \.self) { index in
                        HStack{
                            TextField("Dish", text: self.$dishes[index])
                            TextField("Price", text: self.$price[index])
                            Menu("person") {
                            Text("Kim Kardashian")
                            Text("Joe Biden")
                            Text("Micheal Phelps")
                            Text("Yaniv Inbar")
                            Text("Ozzil")
                            }
                            .foregroundColor(Color.red)
                        }
                        
                    }
                    Button(action:{
                        self.dishes.append("")
                        self.price.append("")
                    }) {
                        Text("Add Dish")
                            .foregroundColor(Color.red)
                        
                    }
                }
            }
            NavigationLink(destination: TipScreen(total: $total, tax: $tax)){
                Text("Next")
            }
            
        }
        
    }
}

struct SplitByMeal_Previews: PreviewProvider {
    @State static var total: Double = 0.0
    @State static var tax: Double = 0.0
    static var previews: some View {
        SplitByMeal(total: $total, tax: $tax)
    }
}
