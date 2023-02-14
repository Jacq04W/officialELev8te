//
//  StoryView.swift
//  officialELev8te
//
//  Created by Jacquese Whitson  on 2/13/23.
//

import SwiftUI

struct StoryView: View {
    @State private var showPt2 = false
    var body: some View {
         
        Button("Show story 2 "){
            showPt2.toggle()
        }
        .sheet(isPresented: $showPt2) {
            ContentView()
        }
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
