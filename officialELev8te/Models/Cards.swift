//
//  Cards.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/15/23.
//

import SwiftUI

struct Cards: View {
    var pic : String
    var description : String
    var amount : Int
   var plus : Bool
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 170,height:170)
                .aspectRatio(3/1, contentMode: .fit)
                .background(.ultraThinMaterial)
                .shadow(radius: 40)
            VStack{
                Spacer()
                Spacer()
                Spacer()

                Image(pic)
                    .resizable()
                    .frame(width: 130,height:130)

                
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
               
                if plus {
                    
                    Text("+\(amount)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                   
                } else {
                    
                    
                    Text("-\(amount)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
            
            
        }
        
        
        
    }
    
    
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards(pic: "purp", description: "Have Fun",amount: 250,plus:false)
    }
}
