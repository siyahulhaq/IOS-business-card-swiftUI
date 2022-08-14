//
//  ContentView.swift
//  Shared
//
//  Created by Siyahul Haq on 06/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.50, blue: 0.73)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("siyahulhaq")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Siyahul Haq")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                .font(Font.custom("Pacifico-Regular", size: 40))
                Text("Full Stack Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                ContactCard(contactText: "+918848089066", image: "phone.fill")
                ContactCard(contactText: "siyahulhaq124@gmail.com",image: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContactCard: View {
    var contactText: String
    var image: String
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: image).foregroundColor(Color.green)
                Text(contactText)
                    .foregroundColor(Color.black)
            })
            .padding(.all)
    }
}
