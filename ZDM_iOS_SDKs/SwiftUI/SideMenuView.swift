//
//  SideMenuView.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 14/12/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isSidebarVisible: Bool
    var fullSize = UIScreen.main.bounds.size.width - 60
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing:0) {
                ZStack{
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.blue)
                        .frame(width: 60, height: 60)
                        .rotationEffect(Angle(degrees: 45))
                        .offset(x:40)
                        .onTapGesture {
                            
                        }
                    Button {
                        isSidebarVisible.toggle()
                    }label: {
                        Image(systemName: isSidebarVisible ? "arrow.left" : "arrow.right")
                            .renderingMode(.original)
                            .foregroundColor(.white)
                            .tint(.red)
                            .fixedSize()
                    }
                    .offset(x:20)
                }
                .padding(.top,100)
                SideMenuBody()
            }
        }
        .offset(x: isSidebarVisible ? fullSize : 0)
        .animation(.default, value: isSidebarVisible)
        .ignoresSafeArea()
    }
}

