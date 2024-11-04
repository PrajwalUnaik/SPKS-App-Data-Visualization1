import SwiftUI


struct Player {
    let name: String
    let role: String
    let imageName: String
    let bio: String
    let highestScore: Int
    let wicketsTaken: Int
}

struct Stocks{
    
    let name:String
    let currentPrice:Int
    let imageName: String
    let bio: String
    let PreviousClose:Int
    let dayRange:String
}

struct PlayerDetailView: View {
    let player: Player

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                HStack {
                    Spacer()
                    Image(player.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 2)
                    Spacer()
                }
                .padding()
                
                Text(player.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text(player.role)
                    .font(.title2)
                    .foregroundColor(.gray)
                
                Divider() // Add a divider for separation
                
                Text("Bio:")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(player.bio)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                
                Text("Statistics")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Highest Score:")
                            .font(.headline)
                            .foregroundColor(.primary)
                        Text("\(player.highestScore)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Wickets Taken:")
                            .font(.headline)
                            .foregroundColor(.primary)
                        Text("\(player.wicketsTaken)")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                }
                .background(Color(.systemGray6)) // Add background color
                .cornerRadius(8) // Round corners
                .shadow(color: Color.black.opacity(0.1), radius: 5) // Shadow for depth

                Spacer()
            }
            .padding()
        }
        .navigationTitle(player.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemBackground))
        .edgesIgnoringSafeArea(.all)
        .padding(.top)
    }
}

#Preview {
    PlayerDetailView(player: Player(name: "Virat Kohli", role: "Batsman", imageName: "ViratKohli", bio: "Former captain of the Indian national team, known for his aggressive batting style.", highestScore: 254, wicketsTaken: 0))
}
