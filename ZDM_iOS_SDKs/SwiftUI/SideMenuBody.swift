//
//  SideMenuBody.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 14/12/22.
//

import SwiftUI
import SSOKit

struct SideMenuBody: View {
    @State var logProfileURL: URL? = URL(string: "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=")
    @State private var favtListdata = CoreDataManager.shared.favtSDK
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    var body: some View {
        ZStack {
            Color.blue
            VStack(alignment: .center, spacing: 0){
                Text("Profile")
                    .padding()
                    .lineLimit(1)
                    .frame(height: 40)
                    .font(.title)
                    .foregroundColor(.white)
                AsyncImage(
                    url: logProfileURL,
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 100, maxHeight: 100)
                            .cornerRadius(50)
                    },
                    placeholder: {
                        ProgressView()
                            .frame(maxWidth: 100, maxHeight: 100)
                    }
                )
                .padding(.top,20)
                Spacer()
                if ZSSOKit.isUserSignedIn() {
                    
                } else {
                    VStack(spacing: 0) {
                        Text("Need to login")
                            .foregroundColor(.white)
                            .font(.title3)
                        Button {
                            ZSSOKit.presentInitialViewController { token, err in
                                print(token)
                            }
                        }label: {
                            Text("Login")
                                .padding()
                                .foregroundColor(.blue)
                                .background(.white)
                                .clipShape(Capsule())
                                .font(.bold(.title)())
                        }
                        .padding()
                        .shadow(
                            color: Color.black.opacity(0.5),
                            radius: 8,
                            x: 0,
                            y: 0
                        )
                    }
                    .padding()
                }
            }
            .padding(.top, safeAreaInsets.top)
            if ZSSOKit.isUserSignedIn() {
                VStack{
                    HStack {
                        Text("Favt SDK's")
                        Spacer()
                    }
                    .padding([.top,.leading,.trailing],20)
                    List(favtListdata, id: \.self) { val in
                        Text(val.sdkName ?? "")
                    }
                }
                .background(.white)
                .cornerRadius(20)
                .padding(.top, (safeAreaInsets.top + 200))
                .padding([.leading,.trailing,.bottom], 10)
                .shadow(
                    color: Color.gray.opacity(0.7),
                    radius: 8,
                    x: 0,
                    y: 0
                )
            }
        }
        .ignoresSafeArea(.all)
    }
    
}

struct SideMenuBody_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuBody()
    }
}
