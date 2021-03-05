//
//  ThemeSettings.swift
//  TodoListbyluthfi.swift
//
//  Created by muhammad luthfi farizqi on 15/02/21.
//

//get = ngambil data
//set = memproses data
import SwiftUI

public class ThemeSettings: ObservableObject {
    @Published public var themeSetings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet{
            UserDefaults.standard.set(self.themeSetings,forKey: "Theme")
        }
    }
    private init(){}
    public static let shared = ThemeSettings()
}
 
