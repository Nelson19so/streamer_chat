# 📱 Streamer Chat

A lightweight, secure, and real-time mobile chat application built with **Flutter** for Android and iOS.  
Users can register using their **username** and **phone number**, and will receive a **unique user ID** to log in. No passwords involved.

---

## 🚀 Features

- 🔐 Login & Register via phone number (no password)
- 🧾 Unique User ID generated on registration
- 💬 One-on-one chat (DM)
- 👥 Create and join group chats
- 🔎 Search chat and users
- 👤 View user profiles
- 🟢 Online/offline status indicators (Planned)
- 📡 Real-time messaging (via WebSocket/Stream)

---

## 🧱 Tech Stack

### 📲 Frontend

- [Flutter](https://flutter.dev/) (Dart)
- Clean MVVM or GetX architecture (optional)
- HTTP requests using [`http`](https://pub.dev/packages/http) or [`dio`](https://pub.dev/packages/dio)
- State management using [`provider`](https://pub.dev/packages/provider) or [`bloc`](https://bloclibrary.dev/)

### 🛠️ Backend

- [Django](https://www.djangoproject.com/)
- [Django REST Framework (DRF)](https://www.django-rest-framework.org/)
- PostgreSQL
- Custom JWT authentication using:
  - `phone_number + user_id` (instead of password)
- Django Channels for real-time messaging (WebSocket)

---

## 🔐 Authentication Flow

1. **Register**

   - Input: `username + phone_number`
   - Output: `user_id` is returned for future logins

2. **Login**
   - Input: `user_id + phone_number`
   - Backend verifies both match
   - Returns JWT access token

> ✅ No passwords. No email required. Only secure ID + phone login.

---

## 📦 Project Structure (Flutter)

lib/
├── main.dart
├── models/
├── services/
├── views/
│ ├── login/
│ ├── register/
│ ├── home/
│ ├── chat/
│ └── groups/
├── providers/
└── utils/

---

## 🌐 API Endpoints (Backend - Django)

| Endpoint            | Method | Description                    |
| ------------------- | ------ | ------------------------------ |
| `/api/register/`    | POST   | Register with username + phone |
| `/api/login/`       | POST   | Login using user_id + phone    |
| `/api/user/`        | GET    | Get logged-in user profile     |
| `/api/chats/`       | GET    | Fetch all user chats           |
| `/api/chats/<id>/`  | GET    | Fetch single chat messages     |
| `/api/groups/`      | POST   | Create group chat              |
| `/api/groups/join/` | POST   | Join a group by group ID       |

> You'll need to use JWT token (in Authorization header) for authenticated requests.

---

## 🛠️ How to Run (Flutter)

```bash
git clone https://github.com/yourusername/streamer_chat.git
cd streamer_chat
flutter pub get
flutter run

Make sure you have an emulator running or a physical device connected.

🛠️ How to Run (Backend)
bash
Copy
Edit
cd streamer_chat_backend
python -m venv env
source env/bin/activate  # or .\env\Scripts\activate on Windows
pip install -r requirements.txt
python manage.py runserver

Make sure PostgreSQL is installed and running.

📌 Environment Variables (.env)
Flutter
No secrets stored in Flutter. Use a config.dart to toggle base URLs.

Django (.env)
ini
Copy
Edit
SECRET_KEY=your-secret-key
DEBUG=True
ALLOWED_HOSTS=127.0.0.1,localhost
DATABASE_URL=postgres://USER:PASSWORD@localhost:5432/streamer_chat
Use python-dotenv to load the .env into settings.py.

📸 Screenshots (Coming Soon)
Add app screenshots from login, chat, and group creation screens.

👨‍💻 Author
Nelson Junior

GitHub

LinkedIn
```
