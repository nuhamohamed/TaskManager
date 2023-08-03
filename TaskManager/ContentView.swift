//
//  ContentView.swift
//  TaskManager
//
//  Created by Nuha Mohamed on 8/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Home()
       
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .preferredColorScheme(.light)
                .background(Color.ground)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let ground = Color("ground")
}
