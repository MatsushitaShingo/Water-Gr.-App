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
                //左上に表示させていきたい　←.offset()を使う？
                Text("現在の節水料")
                               .font(.largeTitle)
                               .bold()
                Text("0L")
                Text("○○月○○日")
                    .padding()
            }
         
            Button(action:{
                //ボタンが押されたときのアクション
            }){
                Text("選ぶ")
            }
            Text("コップいっぱい")
        }
    }
}

struct VisualizationView_Previews: PreviewProvider {
    static var previews: some View {
        VisualizationView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
