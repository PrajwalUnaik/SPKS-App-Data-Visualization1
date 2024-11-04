import SwiftUI

struct HomeView: View {
    @State private var showOptionView = false  // State to control presentation of OptionView

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Image(systemName: "cricket.ball")
                        .resizable()
                        .symbolEffect(.scale)
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 20)
                        .colorInvert()
                    
                    Text("Welcome to")
                        .font(.system(size: 46, weight: .bold))
                        .foregroundColor(.white)

                    Text("FutureCast")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(Color.blue)
                }
                .padding(.leading, 30)
                
                Spacer()
                Spacer()
                
                // Continue Button
                Button(action: {
                    showOptionView = true
                }) {
                    Text("Continue")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                .fullScreenCover(isPresented: $showOptionView) {
                    OptionView()
                }
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    HomeView()
}
