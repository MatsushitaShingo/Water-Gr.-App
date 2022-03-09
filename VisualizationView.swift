//
//  VisualizationView.swift
//  Water Gr. App
//
//  Created by 松下慎吾 on 2022/02/27.
//

import SwiftUI

struct VisualizationView: View {
    var body: some View {
        VStack{
            VStack{
                Text("現在の節水料")
                               .font(.largeTitle)
                               .bold()
                
                Text("0L")
                Text("○○月○○日")
                    .padding()
                
            }.frame(width: 250, height:160, alignment: .bottomTrailing)
                .border(Color.red, width: 2) .offset(x:-400,y:-200)
            Image("夜景").clipShape(Circle())
         
            Button(action:{
                //ボタンが押されたときのアクション
            }){
                ZStack{
                    Color.blue
                        .frame(width:110,height: 110)
                        .overlay(Text("選ぶ").foregroundColor(.red))
                }.offset(x:400,y:200)
            }
            Text("コップいっぱい")
                .offset(y:200)
        }
    }
}

struct VisualizationView_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
