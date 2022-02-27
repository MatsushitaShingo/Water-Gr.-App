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
                    Image(systemName: "drop.fill")
                    Text("動画再生機能")
                        .padding(.vertical)
                        .frame(width:100,height:30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                }
                NavigationLink(destination: StudyingView()){
                    Image(systemName: "drop.fill")
                    Text("学習機能")
                        .padding(.vertical)
                        .frame(width:100,height:30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                }
                NavigationLink(destination: VisualizationView()){
                    Image(systemName: "drop.fill")
                    Text("可視化")
                        .padding(.vertical)
                        .frame(width:100,height:30)
                        .background(Color.gray)
                        .foregroundColor(.white)
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
