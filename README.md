# list_app


its simple app which perform authentication and fetch user list from api 

## packages

- **Local Database**: Utilizes `sqflite` for local data storage.
- **State Management**: Implements `bloc` for state management to ensure a clean and understandable flow of data.
- **Data Serialization**: Uses `freezed` to generate immutable data structures and value equality.
- **Preferences Storage**: Integrates `shared_preferences` to store and retrieve user preferences.
- **Network Requests**: Employs `dio` for making HTTP requests and handling API interactions.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them:

```bash
flutter pub get
Clone the repository:
git clone https://github.com/yourusername/your-app-name.git
Navigate to the project directory:
cd your-app-name
Install dependencies:
flutter pub get
Run the app:
flutter run

