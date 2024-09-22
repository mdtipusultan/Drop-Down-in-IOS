//
//  DropdownView.swift
//  Bank_app
//
//  Created by Tipu on 8/8/24.

import SwiftUI

struct DropdownMenuView: View {
    @Binding var selectedOption: String
    
    let options: [String]
    let placeholder: String
    
    var body: some View {
        Menu {
            // Create a menu item for each option
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedOption = option
                }) {
                    Text(option)
                }
            }
        } label: {
            HStack {
                Text(selectedOption.isEmpty ? placeholder : selectedOption)
                    .foregroundColor(selectedOption.isEmpty ? Color.gray : .primary)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(Color(UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        .padding(.horizontal)
    }
}

#Preview {
    DropdownMenuView(selectedOption: .constant(""), options: ["Option 1", "Option 2", "Option 3"], placeholder: "Select an Option")
}
