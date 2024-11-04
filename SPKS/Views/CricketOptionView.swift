import SwiftUI

struct CricketOptionView: View {
    @State private var showIndiaView = false
    @State private var showEnglandView = false
    @State private var showAustraliaView = false

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                // India Section
                Button(action: { showIndiaView = true }) {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        
                        VStack {
                            Image("IndianFlag")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .padding()
                                .cornerRadius(20)
                            
                            Text("India")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    .padding(.top)
                }
                .fullScreenCover(isPresented: $showIndiaView) {
                    IndiaTeamView()
                }
                
                Spacer()
                
                Button(action: { showEnglandView = true }) {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        
                        VStack {
                            Image("UKFlag") // Replace with your image asset name
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .padding()
                                .cornerRadius(20)
                            
                            Text("England")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .fullScreenCover(isPresented: $showEnglandView) {
                    Text("England Cricket View")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }

                Spacer()
                
                // Australia Section
                Button(action: { showAustraliaView = true }) {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        
                        VStack {
                            Image("AustraliaFlag") // Replace with your image asset name
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .padding()
                                .cornerRadius(20)
                            
                            Text("Australia")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .fullScreenCover(isPresented: $showAustraliaView) {
                    // You can replace this with the actual view for Australia
                    Text("Australia Cricket View")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CricketOptionView()
}
