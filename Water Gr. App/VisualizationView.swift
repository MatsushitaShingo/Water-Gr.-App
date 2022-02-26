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
         Text("現在の節水料")
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
    }
}
