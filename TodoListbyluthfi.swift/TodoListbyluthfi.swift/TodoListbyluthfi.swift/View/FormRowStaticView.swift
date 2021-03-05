//
//  FormRowStaticView.swift
//  TodoListbyluthfi.swift
//
//  Created by muhammad luthfi farizqi on 22/02/21.
//

import SwiftUI

struct FormRowStaticView: View {
    
    var icon: String
    var fistText: String
    var secondText: String
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8,style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(fistText).foregroundColor(Color.gray)
            Spacer()
            Text(secondText)
        }
    }
}

struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", fistText: "Application ", secondText: "Todo")
            .previewLayout(.fixed(width: 357, height: 60))
            .padding()
    }
}
