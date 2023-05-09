//
//  SDKListScreen.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 13/12/22.
//

import SwiftUI


struct SDKListScreen: View {
    @State var logProfileURL: URL? = URL(string: "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=")
    @State var loggedImgData: Data = Data()
    @State private var isSideBarOpened = true
    @State private var listdata = CoreDataManager.shared.fetchedData
    
    var body: some View {
            ZStack {
                VStack(spacing: 0) {
                    HStack(spacing: 0){
                        Text("SDKs")
                    }
                    contentList
                }
                SideMenuView(isSidebarVisible: $isSideBarOpened)
            }
    }
    var contentList: some View {
        List($listdata, id: \.self) { val in
            SDKListCell(data: val)
        }
        .listStyle(.plain)
    }
}


struct SDKListCell: View {
    @Binding var data: SDKDetailEntry
    @State var presentVal: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ZStack {
                    HStack {
                        Image(data.sdkImgUrl ?? "")
                            .frame(width: 50, height: 50)
                            .padding(10)
                        Text(data.sdkName ?? "")
                            .font(.system(size: 20).weight(.bold))
                            .lineLimit(1)
                            .foregroundColor(Color.primary)
                        Spacer()
                    }
                    .padding()
                }
            }
            Button {
                presentVal.toggle()
            } label: {
                Image(systemName: "info")
            }
            .foregroundColor(.white)
            .frame(width: 24, height: 24)
            .background(.red)
            .cornerRadius(12)
            .padding(.top,-40)
            .padding(.leading,-( UIScreen.main.bounds.size.width / 2) + 32)
        }
        .background(Color("CellPrimaryColor"))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 5, x: 2, y: 2)
        .padding([.leading,.trailing], 20)
        .padding([.top,.bottom], 10)
        .background(Color("SecondaryBG"))
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}


struct SDKListScreen_Previews: PreviewProvider {
    static var previews: some View {
        SDKListScreen()
    }
}
