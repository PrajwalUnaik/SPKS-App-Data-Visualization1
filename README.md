

# SPKS - Sports Prediction Knowledge System

SPKS is a SwiftUI-based iOS application designed to provide users with detailed information and insights on various sports, including cricket and football. With a clean interface and intuitive navigation, users can explore teams, players, and financial data across different sports categories.

## Features

- **Home Screen**: 
  - Welcome screen with custom branding and navigation to explore different sports.
  - Simple and visually appealing interface.
  
- **Cricket Teams**:
  - Detailed views for cricket teams such as Australia, England, and India.
  - Information on players and teams presented in a structured manner.

- **Football Teams**:
  - Explore football teams such as Liverpool, Manchester United, and more.
  - Access detailed player statistics and team information.

- **Finance Insights**:
  - Financial statistics and analysis for sports-related activities.
  
- **Navigation**:
  - SwiftUI-based navigation and state management for smooth transitions.
  - Includes option views for custom presentations.

## Structure

The project is divided into the following key components:

1. **Views**:  
   Contains SwiftUI views for each screen in the app, such as:
   - `ContentView`: Entry point with a welcoming screen.
   - `CricketOptionView`, `FootballOptionView`: For selecting teams or categories.
   - `PlayerDetailView`: Detailed view for individual players.
   - `FinanceView`: Insights on sports finances.

2. **Assets**:  
   Contains resources like icons and design elements for UI customization.

3. **State Management**:  
   The application utilizes SwiftUI's state variables (`@State`) to manage UI updates and transitions.

4. **Testing**:
   - `SPKSTests`: Unit testing.
   - `SPKSUITests`: UI testing for SwiftUI views.

## Requirements

- **Xcode**: Version 14.0 or higher.
- **iOS Deployment Target**: iOS 16 or higher.
- **Programming Language**: Swift with SwiftUI.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/PrajwalUnaik/spks.git
   ```
2. Open the project in Xcode:
   ```bash
   cd spks
   open SPKS.xcodeproj
   ```
3. Build and run the app using the simulator or on a physical device.

## Usage

1. Launch the app.
2. Select a sports category (e.g., Cricket or Football).
3. Navigate through teams and players to view detailed information.
4. Explore the Finance section for analytics.

## Future Features

- **Match Predictions**: Predict the outcomes of matches using advanced algorithms.
- **User Profiles**: Personalized experience with saved preferences and history.
- **Live Scores**: Integration with live match updates.
- **Enhanced UI/UX**: Additional customization and animations.

## Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes and push to your fork.
4. Submit a pull request.
