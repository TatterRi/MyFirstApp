//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Rick on 12/15/23.
//

import SwiftUI

struct ContentView: View {
    var number: Float = 3.1415926
    
    var formatter: NumberFormatter {
        let format = NumberFormatter()
        format.numberStyle = .currency
        return format
    }
    
    let fontSize: CGFloat = 100
    
    var body: some View {
        
        Image("Toronto")
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .cornerRadius(25)
            .padding(20)
            .shadow(color:.black, radius: 5, x:5, y:5 )
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.red)
                .frame(minWidth: 0, maxWidth:.infinity)
                .background(.gray)
                .cornerRadius(20)
                .overlay(Color(red:1, green: 1, blue:0.3, opacity:0.2).frame(width: 200, height: 40)
                )
            Text("My Number: \(NSNumber(value: number), formatter: formatter)")
            Image(systemName: "envelope.circle")
                .font(Font.system(size: fontSize))
                .onAppear(perform: {
                    print("Current Font Size: \(self.fontSize)")
                })
        }
        .padding(25)
    }
}

#Preview {
    ContentView()
}
