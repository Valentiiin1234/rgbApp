//
//  ContentView.swift
//  rgbApp
//
//  Created by Mac on 14.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(red: redValue / 255,
                                       green: greenValue / 255,
                                       blue: blueValue / 255,
                                       opacity: 1))
                .frame(width: 300, height: 200)
                .cornerRadius(30)
                
            ColorSliderView(value: $redValue)
            ColorSliderView(value: $greenValue)
            ColorSliderView(value: $blueValue)
            
            Spacer()
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    
    var body: some View {
        HStack{
            Text("\(lround(value))")
                .frame(width: 50, height: 50)
            Slider(value: $value, in: 0...255, step: 1)
        }
    }
}
