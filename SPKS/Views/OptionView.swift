import SwiftUI

struct OptionView: View {
    var body: some View {
        NavigationView { // Wrap in a NavigationView to enable navigation
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    
                    // Sports Section
                    NavigationLink(destination: SportsOptionView()) {
                        ZStack {
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .cornerRadius(20)
                                .shadow(radius: 5)
                            
                            VStack {
                                Image("Sports")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 100)
                                    .padding()
                                    .cornerRadius(20)
                                
                                Text("Sports")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                            .padding()
                        }
                        .padding(.horizontal)
                        .padding(.top)
                    }
                    
                    Spacer()
                    
                    // Finance Section
                    NavigationLink(destination: FinanceView()) {
                        ZStack {
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .cornerRadius(15)
                                .shadow(radius: 5)
                            
                            VStack {
                                Image("Finance")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 100)
                                    .padding()
                                    .cornerRadius(20)
                                
                                Text("Finance")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                            .padding()
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
                .navigationBarHidden(true)
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    OptionView()
}
