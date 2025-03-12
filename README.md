# Spotify Recommendation System

## Overview
This project is a **Spotify Recommendation System** that suggests songs based on user preferences. It leverages data analysis and machine learning techniques to provide personalized song recommendations.

## Features
- **Content-Based Filtering**: Recommends songs similar to a given track.
- **Collaborative Filtering**: Suggests songs based on user listening history.
- **Audio Feature Analysis**: Uses Spotify's API to analyze track attributes.
- **Data Visualization**: Provides insights into song features and recommendation patterns.

## Technologies Used
- **Python**
- **Pandas, NumPy**
- **Scikit-Learn**
- **Spotify API (Spotipy)**
- **Matplotlib, Seaborn**

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Sneha73685/Spotify-Recommendation-System.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Spotify-Recommendation-System
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Set up Spotify API credentials:
   - Sign up at [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
   - Create an app and get your **Client ID** and **Client Secret**.
   - Set up environment variables or update the script with your credentials.

## Usage
1. Run the recommendation script:
   ```bash
   python recommend.py
   ```
2. Enter a song name to get recommendations.
3. View song suggestions based on your input.

## Dataset
- The dataset is sourced from **Spotify API** and includes track metadata, popularity, and audio features like tempo, energy, and danceability.

## Future Improvements
- Implement a hybrid recommendation model combining content-based and collaborative filtering.
- Improve UI for better user experience.
- Expand dataset for better recommendation accuracy.

## Contributing
Feel free to open issues and submit pull requests for improvements!

## License
This project is licensed under the **MIT License**.

## Contact
For any queries, reach out via [GitHub Issues](https://github.com/Sneha73685/Spotify-Recommendation-System/issues).
