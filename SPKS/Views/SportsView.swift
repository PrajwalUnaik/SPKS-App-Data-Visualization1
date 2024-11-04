import SwiftUI

struct SportsOptionView: View {
    @State private var showFootballView = false
    @State private var showCricketView = false

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                // Football Section
                Button(action: { showFootballView = true }) {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            .shadow(radius: 5)
                        
                        VStack {
                            Image("Football")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .padding()
                                .cornerRadius(20)
                            
                            Text("Football")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    .padding(.top)
                }
                .fullScreenCover(isPresented: $showFootballView) {
                    FootballOptionView()
                }
                
                Spacer()
                
                // Cricket Section
                Button(action: { showCricketView = true }) {
                    ZStack {
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        
                        VStack {
                            Image("Cricket")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                                .padding()
                                .cornerRadius(20)
                            
                            Text("Cricket")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                .fullScreenCover(isPresented: $showCricketView) {
                    CricketOptionView()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SportsOptionView()
}
