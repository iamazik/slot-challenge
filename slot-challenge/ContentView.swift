//
//  ContentView.swift
//  slot-challenge
//
//  Created by Md Mazedul Islam Khan on 10/7/21.
//

import SwiftUI

struct ContentView: View {
    @State private var credits:Int = 1000;
    @State private var slot1:String = "apple";
    @State private var slot2:String = "cherry";
    @State private var slot3:String = "star";
    
    var body: some View {
        VStack {
            Spacer()

            Text("SwiftUI Slots")
                .font(.largeTitle);
            
            Spacer()
            
            Text("Credits \(credits)")
                .font(.subheadline);
            
            HStack {
                Image(slot1).resizable().aspectRatio(contentMode: .fit);
                Image(slot2).resizable().aspectRatio(contentMode: .fit);
                Image(slot3).resizable().aspectRatio(contentMode: .fit);
            }
            
            Spacer()
            
            Button(action: {
                slot1 = ["apple", "cherry", "star"].randomElement()!;
                slot2 = ["apple", "cherry", "star"].randomElement()!;
                slot3 = ["apple", "cherry", "star"].randomElement()!;
                
                if (slot1 == slot2) && (slot2 == slot3) {
                    credits += 15;
                } else {
                    credits -= 5;
                }
            }, label: {
                Text("Spin")
                    .fontWeight(.bold)
            }).padding().padding(.horizontal, 40.0).background(Color.red).cornerRadius(20).foregroundColor(Color.white)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
