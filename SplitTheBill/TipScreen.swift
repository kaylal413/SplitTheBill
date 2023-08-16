import SwiftUI

struct TipScreen: View {
    var totalWithTip = Double()      // <total with tip>
    var totalWithoutTip = Double(90)     // <total without tip>
  //  var fifteenPercentAmt = totalWithoutTip * 1.15
  //  var eighteenPercentAmt = totalWithoutTip * 1.18
  //  var twentyPercentAmt = totalWithoutTip * 1.2
  //  var tenPercentAmt = totalWithoutTip * 1.1
  //  var tenPercentAmt = ceil((totalWithoutTip * 1.1)*100)/100
    
    var body: some View {
        VStack{                                             //really big vstack
            HStack{                                   //tip + icon hstack
                Text("Tip")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Image("tipicon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100.0)
            }
            VStack(alignment: .trailing){           //total w tip + total wo tip hstack
                Text("Total with tip: $\(totalWithTip)")
                    .font(.title)

                Text("Total without tip: $\(totalWithoutTip)")
                    .font(.title)
                }
            VStack{                                 //vstack with 2 rows of hstacks
                HStack{                             //hstack with 2 squares
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 150, height: 150)
                            .cornerRadius(25)
                        VStack{                         // 10%
                            Text("10%")
                                .font(.title)

               //             Text("$\(tenPercentAmt)")
                        }

                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 150, height: 150)
                            .cornerRadius(25)
                        VStack{                         // 15%
                            Text("15%")
                                .font(.title)
                  //          Text("$\(fifteenPercentAmt)")
                        }

                    }
                    Spacer()
                }
                .padding()
                HStack{                         //hstack with 2 squares
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 150, height: 150)
                            .cornerRadius(25)
                        VStack{                         // 18%
                            Text("18%")
                                .font(.title)
           //                 Text("$\(eighteenPercentAmt)")
                        }
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(width: 150, height: 150)
                            .cornerRadius(25)
                        VStack{                         //20%
                            Text("20%")
                                .font(.title)
          //                  Text("$\(twentyPercentAmt)")
                        }
                    }
                    Spacer()
                      }
                   }
               }
            }
        }
    


struct TipScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipScreen()
    }
}

