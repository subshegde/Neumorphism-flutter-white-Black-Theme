# Flutter Neumorphism UI Example

This is a simple Flutter project that demonstrates the Neumorphism design trend using a custom bottom navigation bar with dynamic theming. The project switches between a light and dark theme based on user interaction.

## Features

- **Neumorphism Design:** The UI is designed with the neumorphism aesthetic, featuring soft shadows and rounded corners for a more tactile look.
- **Bottom Navigation Bar:** The app includes a bottom navigation bar to switch between two themes: Light and Dark.
- **Dynamic Theme Switch:** Based on the selected tab, the background color, icon color, and other UI elements dynamically change to fit the selected theme.

## Screenshots


## Getting Started

To run this project locally, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/subshegde/Neumorphism-flutter-white-Black-Theme.git

# Code Explanation

This project contains a StatefulWidget Object1 with a bottom navigation bar using the google_nav_bar package. The theme is dynamically updated based on the selected tab.
Key Sections:

State Management: The _selectedIndex is used to track the selected tab index. Based on this index, the background color, tab background color, active color, and icon color are updated.
Neumorphism Design: The Container widgets utilize soft shadows with BoxShadow properties to create the soft, inset, and extruded effects typical of neumorphism.
GNav Widget: The GNav widget is used for the bottom navigation bar, which allows switching between two tabs: White (Light) and Dark.

# Dependencies:
flutter: The Flutter SDK
google_nav_bar: For the bottom navigation bar.

You can find more information about the google_nav_bar package on pub.dev.

# Contributing : 
If you want to contribute to this project, feel free to fork the repository and create a pull request. Any contributions, improvements, or fixes are appreciated!

# Acknowledgments
The neumorphism design pattern was inspired by the latest UI trends.
The google_nav_bar package was used for the bottom navigation bar.
