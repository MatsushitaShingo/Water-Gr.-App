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
        
                    NavigationLink(destination: selectView()){
                        ZStack{
                            Color.blue
                                .frame(width:110,height: 110)
                                .overlay(Text("選ぶ")
                                .foregroundColor(.red))
                        }.offset(x:400,y:200)
                    }
            Text("コップいっぱい")
                .offset(y:200)
        }
    }
}
struct selectView: View{
    var body: some View{
        VStack{
            
            Text("記録する")
            HStack{
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
                Image(systemName: "circle")
            }
        }
    }
}
struct testView:View{
    @State private var isShowingView: Bool = false

        var body: some View {
            if isShowingView {
                selectView()
            } else {
                Button {
                    isShowingView.toggle()
                } label: {
                    Text("フラグ切替")
                }
            }
        }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
.previewInterfaceOrientation(.landscapeRight)
    }
}
