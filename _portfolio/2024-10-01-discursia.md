---
title: "Discursia: AI-Powered Language Learning Redefined"
excerpt: "Oct 2024: Discursia - AI-Powered Language Learning App for Conversational Skills <br/><img src='/images/discursia.jpg'>"
collection: portfolio
---

# Discursia: AI-Powered Language Learning

Discursia is an innovative mobile application designed to enhance language-learning experiences by engaging users in meaningful discussions on various topics. Built with Flutter and leveraging Firebase for backend services, it utilizes the power of Large Language Models (LLMs) to create an immersive and effective learning environment.

<img src="/images/discursia.jpg">

## Project Overview

The primary objective of Discursia is to help language learners move beyond basic grammar and vocabulary by actively engaging them in meaningful discussions. It aims to improve their ability to articulate thoughts, construct arguments, and use language accurately and coherently in conversational contexts.

## Key Features

- **AI-Driven Topic Generation**: Suggests engaging, open-ended discussion topics tailored to the user's interests and proficiency level, ensuring sustained motivation.
- **Comprehensive Response Evaluation**: Analyzes user's written responses based on multiple criteria, including argument depth, language accuracy (grammar, vocabulary), coherence, and structural quality, providing actionable feedback.
- **Targeted Skill Development**: Offers creative prompts, suggests alternative phrasing or ideas, and provides practical insights to help users refine both their linguistic abilities and critical thinking skills.
- **Interactive Learning Loop**: Fosters continuous improvement through a cycle of engagement, response, evaluation, and learning.
- **Answer Suggestions**: Offers model-generated answers to help users learn through examples.
- **Past Interactions**: Allows users to revisit past themes, responses, and evaluations for continuous improvement.
- **Multi-Screen Functionality**: Supports login, signup, and discussion screens with a seamless UI.
- **Multi-Language Support**: Available in English, German, French, Italian, Portuguese, Hindi, Spanish, and Thai.

## How It Works

1. **Topic Engagement**: The user selects or is presented with an AI-generated discussion topic.
2. **User Response**: The user writes a response, articulating their thoughts or arguments on the topic in the target language.
3. **AI Evaluation**: The app's AI engine analyzes the user's text using Generative AI and RAG techniques.
4. **Feedback Delivery**: The user receives detailed, structured feedback covering various aspects of their response.
5. **Learning and Iteration**: Based on the feedback, the user learns and can attempt the topic again or move to a new one, applying the insights gained.

## Technical Implementation

### Tools and Technologies

- **Core Concepts**: Language Learning, Conversational AI, Generative AI, Retrieval-Augmented Generation (RAG), Natural Language Processing (NLP)
- **AI/ML**: Large Language Models (LLMs) for generation and evaluation, RAG frameworks
- **Frontend**: Flutter for cross-platform mobile app development
- **Backend**: Firebase for user data management and authentication
- **Techniques**: Prompt Engineering, Software Development best practices

### Project Structure

```
lib
├── api
│   └── llmservice.dart      # Interface with the language model
├── db
│   ├── auth_google.dart     # Google authentication integration
│   ├── discusia.dart        # Firebase database interaction
│   ├── discussion.dart      # Discussion model logic
│   └── model.dart           # Core data models
├── firebase_options.dart    # Firebase configuration
├── main.dart                # App entry point
├── screens
│   ├── home.dart            # Home screen UI
│   ├── login.dart           # Login screen UI
│   └── signup.dart          # Signup screen UI
├── utilities
│   ├── api_key.dart         # API key management
│   ├── prompts.dart         # Predefined prompts for discussions
│   ├── storage_manager.dart # Handles local storage
│   └── topic_management.dart # Topic generation and management
└── widgets
    ├── card_builder.dart    # Dynamic card creation
    ├── config.dart          # App configuration settings
    ├── detail.dart          # Detailed view for discussions
    ├── eval.dart            # Evaluation logic
    ├── history.dart         # View for past discussions
    ├── suggest.dart         # Topic suggestion logic
    ├── themeselector.dart   # Theme customization
    └── writing.dart         # Writing input UI
```

## Target Audience

- **Intermediate to Advanced Language Learners**: Individuals seeking to improve fluency, argumentation skills, and nuanced language use.
- **Exam Preparation**: Students preparing for language proficiency tests that include writing or speaking components requiring coherent arguments (e.g., TOEFL, IELTS).
- **Professional Development**: Individuals needing to enhance their communication skills in a foreign language for work or academic purposes.

## Installation and Usage

### Prerequisites

* Flutter SDK installed ([installation guide](https://flutter.dev/docs/get-started/install))
* Firebase project set up with required configurations
* Dart enabled in your IDE (e.g., Android Studio, VS Code)

### Setup Steps

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/KameniAlexNea/learning_language.git
   cd learning_language
   ```
2. **Set Up Firebase:**
   * Replace `firebase_options.dart` with your Firebase configuration.
   * Ensure Firebase services like Firestore and Authentication are enabled.
3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```
4. **Run the App:**
   ```bash
   flutter run
   ```

### Using the App

1. **Sign Up and Log In**: Create an account or log in via Google authentication.
2. **Explore Topics**: Navigate to the home screen to view or request new discussion topics.
3. **Submit Responses**: Write your response to the suggested topic and receive detailed feedback.
4. **Review Past Discussions**: Access the history screen to revisit past discussions and their evaluations.
5. **Customize the Experience**: Use the theme selector to tailor the app's look and feel.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes and push the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
4. Create a pull request for review.

## License

This project is licensed under the **GNU Affero General Public License (AGPL)** License. See the [LICENSE](https://www.gnu.org/licenses/agpl-3.0.en.html#license-text) file for more details.

## Contact

For questions, feedback, or collaboration opportunities, please contact [alexneakameni](https://www.linkedin.com/in/elie-alex-kameni-ngangue/).
