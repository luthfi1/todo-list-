//
//  EmptyListView.swift
//  TodoSwiftUI
//
//  Created by muhammad luthfi farizqi on 18/02/21.
//

import SwiftUI

struct EmptyListView: View {
    @State private var isAmimated : Bool = false
    
    @ObservedObject var theme = ThemeSettings.shared
    var themes: [Theme] = themeData
    
    let images : [String] = [
        "illustration-no1",
        "illustration-no2",
        "illustration-no3",
        "illustration-no4",
        "illustration-no5",
        "illustration-no6",
        "illustration-no7",
        "illustration-no8",
        
    ]
    
    let tips : [String] = [
        "Gunakan waktu mu dengan bijak",
        "keeep down to eath",
        "Utamakan Pekerjaan berat terlebih dahulu",
        "Apresiasi diri mu setelah berkerja",
        "Persiapkan hari esok lebih baik",
        "Asal perlahan yang penting selesai",
        " shalat lebih utama dari pada ilmu " ,
        "Be a first-class version of yourself, not someone else's second-rate version",
        "Adab lebih utama dari pada Ilmu",
        "IT Class"
    ]
    
    var body: some View {
        ZStack{
            VStack(alignment: .center, spacing: 20) {
                Image("\(images.randomElement() ?? self.images[0])")
                    .renderingMode(.template)
                    .resizable()
                    .frame(minWidth: 258, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                    .foregroundColor(themes[self.theme.themeSetings].themeColor)
                Text("\(tips.randomElement() ?? self.tips[0])").font(.system(.headline, design: .rounded))
                    .foregroundColor(themes[self.theme.themeSetings].themeColor)
            }
            .padding(.horizontal)
            .opacity(isAmimated ? 1 : 0)  //bentuk if else yang lebih singkat
            .offset(y: isAmimated ? 0 : -50)
            .animation(.easeOut(duration: 1.5)) //animasi yg di awal nya muncul nya cepet di akhirnya lambat
            //.easeIn
            .onAppear(perform: {
                self.isAmimated.toggle()
            })
              }
        .frame(minWidth: 0, maxWidth: .infinity ,minHeight: 0,maxHeight: .infinity)
        .background(Color("ColorBase"))
        .edgesIgnoringSafeArea(.all)
            }
        }

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView().environment(\.colorScheme, .dark)
    }
}
