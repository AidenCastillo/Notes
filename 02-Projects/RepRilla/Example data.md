RepRilla-app/
├── assets/                     # Icons, fonts, images
├── components/                 # Reusable UI: WorkoutCard, Chart, etc.
├── screens/                    # Home, LogWorkout, Nutrition, Profile, Auth
├── navigation/                 # React Navigation setup
├── firebase/                   # Firebase config + API calls
│   ├── firebaseConfig.js
│   └── firestore.js
├── context/                    # Auth, Global state
├── hooks/                      # useWorkoutLogs, useNutrition, etc.
├── utils/                      # Formatters, date utilities
├── App.js                      # Entry point
├── package.json
└── app.json / eas.json         # Expo configs
🔥 Firestore Data Schema
👤 users/{userId}
json
Copy
Edit
{
  "email": "user@example.com",
  "displayName": "John",
  "createdAt": Timestamp,
  "weightUnit": "lbs",
  "height": 180,
  "goal": "Gain Muscle"
}
🏋️ users/{userId}/workouts/{workoutId}
json
Copy
Edit
{
  "date": Timestamp,
  "notes": "Felt strong today.",
  "exercises": [
    {
      "name": "Bench Press",
      "sets": [
        { "reps": 10, "weight": 135 },
        { "reps": 8, "weight": 145 },
        { "reps": 6, "weight": 155 }
      ]
    },
    {
      "name": "Pull-ups",
      "sets": [
        { "reps": 10 },
        { "reps": 8 },
        { "reps": 6 }
      ]
    }
  ]
}
🍎 users/{userId}/nutritionLogs/{logId}
json
Copy
Edit
{
  "date": "2025-05-26",
  "meals": [
    {
      "type": "Breakfast",
      "items": [
        { "name": "Oats", "calories": 300, "protein": 10, "carbs": 45, "fat": 5 }
      ]
    },
    {
      "type": "Dinner",
      "items": [
        { "name": "Chicken Breast", "calories": 400, "protein": 35, "carbs": 5, "fat": 15 }
      ]
    }
  ],
  "total": {
    "calories": 1700,
    "protein": 120,
    "carbs": 150,
    "fat": 60
  }
}
⚖️ users/{userId}/metrics/{metricId}
json
Copy
Edit
{
  "type": "Bodyweight",
  "value": 170,
  "unit": "lbs",
  "timestamp": Timestamp
}
⚙️ Firebase Setup Checklist
Go to Firebase Console

Create a new project (fitchimp)

Enable:

Firestore

Firebase Auth (Email/Google/Apple)

Firebase Storage (for progress photos)

Add your config to firebaseConfig.js:

js
Copy
Edit
// firebase/firebaseConfig.js
import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";
import { getAuth } from "firebase/auth";

const firebaseConfig = {
  apiKey: "your-key",
  authDomain: "your-app.firebaseapp.com",
  projectId: "your-project-id",
  storageBucket: "your-app.appspot.com",
  messagingSenderId: "id",
  appId: "id"
};

const app = initializeApp(firebaseConfig);
export const db = getFirestore(app);
export const auth = getAuth(app);