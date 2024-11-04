//
//  FinanceView.swift
//  SPKS
//
//  Created by Prajwal U on 04/11/24.
//

import SwiftUI

struct FinanceView: View {
    var body: some View {
        Text("This is the Finance Page")
            .font(.largeTitle)
            .foregroundColor(.black)
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true) // Hide the entire navigation bar
    
    }
}

#Preview {
    FinanceView()
}
