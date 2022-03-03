//
//  ContentView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: MovieView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("動画再生機能だよ")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(destination: StudyingView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("学習機能")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(destination: VisualizationView()){
                    ZStack{
                        Image(systemName: "drop.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        Text("可視化機能")
                            .padding(.vertical)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
