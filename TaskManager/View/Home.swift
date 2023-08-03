//
//  Home.swift
//  TaskManager
//
//  Created by Nuha Mohamed on 8/3/23.
//

import SwiftUI

extension Color {
    static let dblue = Color("dblue")
}

struct Home: View {
    ///Task Manager proeprties
    @State private var currentDate: Date = .init()
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HeaderView()
        })
            .vSpacing(.top)
    }
    
    
    @ViewBuilder
    func HeaderView() -> some View {
        
        VStack(alignment: .leading, spacing: 6) {
        HStack(spacing: 5) {
            Text(currentDate.format("MMMM"))
                .foregroundStyle(Color.dblue)
            
            Text(currentDate.format("YYYY"))
                .foregroundStyle(.gray)
        }
        .font(.title.bold())
            
            Text(currentDate.formatted(date: .complete, time: .omitted))
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                
        }
        hSpacing(.leading)
        .overlay(alignment: .topTrailing, content: {
            Button (action: {}, label: {
                Image("profile")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
            })

        })
        .padding(15)
        
        .background(.white)
}


}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


