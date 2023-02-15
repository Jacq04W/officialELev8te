//
//  DecisionMaking.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/15/23.
//

import SwiftUI

struct DecisionMaking: View {
    var body: some View {
        HStack{
            Cards(pic: "sniper", description: "Have fun", amount: 250,plus: false )
                .onTapGesture {
                    
                }
            Cards(pic: "sniper", description: "Put Away", amount: 250,plus: true )

            
            Cards(pic: "purp", description: "Stay in for Dinner", amount: 100,plus: false )
                .onTapGesture {
                    
                }
        }
    }
}

struct DecisionMaking_Previews: PreviewProvider {
    static var previews: some View {
        DecisionMaking()
    }
}
