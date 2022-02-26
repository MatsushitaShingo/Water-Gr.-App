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
                    Text("動画")
                        .padding(.vertical)
                        .frame(width:100,height:30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                }
                NavigationLink(destination: StudyingView()){
                    Text("学習")
                        .padding(.vertical)
                        .frame(width:100,height:30)
                        .background(Color.gray)
                        .foregroundColor(.white)
                }
                NavigationLink(destination: VisualizationView()){
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
    }
}
