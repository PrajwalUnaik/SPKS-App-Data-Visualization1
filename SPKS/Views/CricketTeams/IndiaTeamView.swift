import SwiftUI



struct IndiaTeamView: View {
    
    let players: [Player] = [
        Player(name: "Virat Kohli", role: "Batsman", imageName: "ViratKohli", bio: "Former captain of the Indian national team, known for his aggressive batting style.", highestScore: 254, wicketsTaken: 0),
        Player(name: "Rohit Sharma", role: "Batsman", imageName: "RohitSharma", bio: "Current captain of the Indian national team, holds the record for the highest individual score in ODIs.", highestScore: 264, wicketsTaken: 0),
        Player(name: "Jasprit Bumrah", role: "Bowler", imageName: "JaspritBumrah", bio: "Known for his unique bowling action and deadly yorkers.", highestScore: 0, wicketsTaken: 120),
        Player(name: "MS Dhoni", role: "Wicket-keeper", imageName: "MSDhoni", bio: "Former captain and one of the most successful wicket-keeper batsmen in cricket history.", highestScore: 183, wicketsTaken: 0),
        Player(name: "Sachin Tendulkar", role: "Batsman", imageName: "SachinTendulkar", bio: "Widely regarded as one of the greatest batsmen in cricket history, holds numerous records including the most runs in ODIs and Tests.", highestScore: 248, wicketsTaken: 201),
        Player(name: "Kapil Dev", role: "All-rounder", imageName: "KapilDev", bio: "Former Indian captain who led India to its first World Cup victory in 1983, known for his all-round capabilities.", highestScore: 175, wicketsTaken: 434),
        Player(name: "Sourav Ganguly", role: "Batsman", imageName: "SouravGanguly", bio: "Former captain known for his aggressive batting and leadership, instrumental in building a competitive Indian cricket team.", highestScore: 239, wicketsTaken: 3),
        Player(name: "Anil Kumble", role: "Bowler", imageName: "AnilKumble", bio: "Legendary leg-spinner and former captain, known for his exceptional wicket-taking ability and leadership skills.", highestScore: 110, wicketsTaken: 619),
        Player(name: "Yuvraj Singh", role: "All-rounder", imageName: "YuvrajSingh", bio: "Renowned for his explosive batting and match-winning performances in limited-overs cricket, especially in the 2007 T20 and 2011 ODI World Cups.", highestScore: 150, wicketsTaken: 111),
        Player(name: "Rahul Dravid", role: "Batsman", imageName: "RahulDravid", bio: "Former captain and one of the most technically sound batsmen, known for his reliability and ability to play under pressure.", highestScore: 270, wicketsTaken: 0),
        Player(name: "Virender Sehwag", role: "Batsman", imageName: "VirenderSehwag", bio: "Known for his aggressive batting style, holds the record for the highest score by an Indian in Tests.", highestScore: 319, wicketsTaken: 40),
        Player(name: "Hardik Pandya", role: "All-rounder", imageName: "HardikPandya", bio: "Dynamic all-rounder known for his explosive batting and effective bowling, plays a crucial role in limited-overs formats.", highestScore: 91, wicketsTaken: 45),
    ]

    var body: some View {
        NavigationView {
            List(players, id: \.name) { player in
                NavigationLink(destination: PlayerDetailView(player: player)) {
                    HStack {
                        Image(player.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(player.name)
                                .font(.headline)
                            Text(player.role)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationBarTitle("Indian Cricket Team")
        }
    }
}


#Preview {
    IndiaTeamView()
}
