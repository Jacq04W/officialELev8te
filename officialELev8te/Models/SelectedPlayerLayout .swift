//
//  SelectedPlayerLayout .swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/9/23.
//

import SwiftUI

struct SelectedPlayerLayout: View {
    var selectedPlayer : String

    var body: some View {
        Image(selectedPlayer)
            .resizable()
            .frame(width: 180, height: 230)
     
                
        
    }
}

struct SelectedPlayerLayout__Previews: PreviewProvider {
    static var previews: some View {
        SelectedPlayerLayout(selectedPlayer:"purp")
    }
}
