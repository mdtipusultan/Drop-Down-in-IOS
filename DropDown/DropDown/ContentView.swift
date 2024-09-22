//
//  ContentView.swift
//  DropDown
//
//  Created by Tipu on 22/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOperatorType = ""
    
    var body: some View {
        VStack {
            DropdownMenuView(selectedOption: $selectedOperatorType, options: ["A", "B","c","d","e","f"], placeholder: "Select Operator Type")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
