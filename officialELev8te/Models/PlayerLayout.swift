//
//  gridLayout .swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/8/23.
//

import SwiftUI

struct PlayerLayout: View {
    // array of images
    var players = ["camper","archer","sniper","zombie","storm trooper","purp"]
    // specifys which items in the array is going to be showed
    let items = 0...2
    let items2 = 3...5
    var body: some View {
        
        VStack(spacing: 20) {
            HStack{
                // creates 3 charachters I can choose from
                ForEach(players[items],id: \.self ){ i in
                    Button(){
                    }label: {
                        Image("\(i)")
                            .resizable()
                            .frame(width: 100, height: 150)
                    }
                }
                
            }// hstack
            HStack{
                ForEach(players[items2],id: \.self ){ i in
                    
                    Button(){
                        
                    }label: {
                        Image("\(i)")
                            .resizable()
                            .frame(width: 100, height: 150)
                        
                    }
                }
            }
            
            
            
        }// vstack
        
    }
}

struct gridLayout__Previews: PreviewProvider {
    static var previews: some View {
        PlayerLayout()
    }
}
