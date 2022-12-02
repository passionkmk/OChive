//
//  ContentView.swift
//  OChive
//
//  Created by pkmk on 2022/11/07.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appDelegate: OChiveAppDelegate
    @EnvironmentObject var sceneDelegate: OChiveSceneDelegate
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onReceive(sceneDelegate.$sceneStatus) {
            print($0)
            
            #if DEV
            print("DEV")
            #elseif QA
            print("QA")
            #elseif STAGE
            print("STAGE")
            #elseif PROD
            print("PROD")
            #endif
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
