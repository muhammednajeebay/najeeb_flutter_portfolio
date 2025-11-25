# 🧑‍💻 Muhammed Najeeb AY — Flutter Developer

**Location:** Kerala, India  
**Email:** [muhammednajeeb.ay@gmail.com](mailto:muhammednajeeb.ay@gmail.com)  
**LinkedIn:** [linkedin.com/in/muhammednajeebay](https://linkedin.com/in/muhammednajeebay)  
**GitHub:** [github.com/muhammednajeebay](https://github.com/muhammednajeebay)

---

## 👋 Professional Summary

Hi, I'm Najeeb, a Flutter Developer and Mobile App Engineer passionate about crafting applications that are fast, scalable, and truly user-focused. With hands-on experience in production-grade apps, I bring together performance, clean architecture, and intuitive design to deliver seamless digital experiences.

My expertise includes state management, API-driven development, animations, and platform integrations. I care deeply about writing clean, maintainable code and building solutions that can grow and adapt with time. For me, great apps are not just functional—they're elegant and sustainable.

I thrive on continuous learning, constructive feedback, and staying ahead with modern Flutter/Dart practices. Known for being detail-oriented and pragmatic, I approach problem-solving with clarity while keeping long-term scalability in mind.

---

## 🛠 Skills

- **Flutter & Mobile:** Flutter, Dart, Responsive UI, Animations, Cross-Platform Development  
- **State Management:** BLoC, Cubit, Provider, GetX  
- **Architecture:** Clean Architecture, Modular Development, MVC, SOLID Principles, GoRouter, Navigator 2.0  
- **Backend & Realtime:** REST API, GraphQL, WebSocket, Supabase (Auth, Realtime, DB), Firebase (Auth, Firestore, Realtime)  
- **Storage:** Hive, Sqflite, SharedPreferences  
- **Tools & Testing:** Git, GitHub, Postman, Android Studio, VS Code, API Profiling, Unit & Widget Testing, CI/CD (Basics)

---

## 💼 Work Experience

### NEXTEONS Software Solutions — Flutter Developer _(May 2024 – Oct 2025)_
- Engineered ERP, LMS, and workflow applications using modular Clean Architecture, cutting code duplication and improving maintainability across teams.  
- Built real-time dashboards with WebSocket + optimized GraphQL queries to keep performance stable under high concurrency.  
- Led API profiling, caching optimizations, and refactors that reduced latency and boosted UI responsiveness.  
- Collaborated closely with backend engineers and UI/UX designers in Agile/Scrum ceremonies, contributing to sprint planning, reviews, and iterative debugging.  
- **ERP Platform:** Delivered inventory, sales, purchase, and reporting modules with live stock visibility and automated financial summaries. (Flutter, GetX, GraphQL, WebSocket)  
- **LMS:** Implemented curriculum, exam, assignment workflows, and role-based dashboards on a scalable BLoC architecture. (Flutter, BLoC, GraphQL)  
- **Event ERP:** Built booking, slot allocation, vendor tracking, and automated reporting modules to improve event operations.

### Luminar TechnoHub — Flutter Intern _(Nov 2023 – May 2024)_
- Integrated REST APIs and Firebase services for real-time sync, secure auth, and cloud-backed workflows.  
- Crafted reusable UI flows and feature modules with Provider, reducing rebuild overhead and improving maintainability.  
- Applied Clean Architecture principles across modules to strengthen separation of concerns and testability.  
- **DIGIBANK:** Developed account overview, transactions, and balance modules with optimized API handling and state management.  
- **YUMMLY:** Built recipe recommendations, uploads, bookmarking, and category browsing with smooth API integrations and intuitive UX.

---

## 🚀 Projects

- **Responsive Text Plus (Pub.dev Package) — Flutter, Dart**  
  Developed a customizable text-scaling package supporting dynamic font adaptation, multi-line handling, and overflow control to keep typography consistent across platforms.  
  Improved UI reliability for responsive layouts and crossed 100+ downloads on pub.dev with positive feedback from teams using it in production.

- **Placement Assistance App — Flutter, Provider**  
  Role-based placement management system with job postings and student applications using structured approval workflows.  
  Implemented REST API integration, secure authentication flows, and clean state management to ensure predictable updates and low latency.  
  Designed modular UI components and scalable data models that reduced API coupling and improved maintainability.

- **News Hunt — Flutter, Provider**  
  Real-time news aggregation platform that fetches and filters articles from external APIs with categorized feeds and bookmarking.  
  Delivered an adaptive and responsive UI with efficient API caching, pagination, and error handling for smooth reading experiences.  
  Optimized state transitions and widget rebuilds to maintain consistent performance across devices.

- **Quiz App — Flutter, Provider**  
  Interactive quiz platform powered by API-driven questions with real-time scoring, progress tracking, and instant feedback mechanisms.  
  Developed a clean state flow using Provider to manage question transitions, timers, score calculations, and navigation between stages.  
  Ensured performance efficiency by minimizing unnecessary rebuilds and implementing modular widget structures for future scalability.

---

## 📂 About This Portfolio Repository

This repo contains my animated, responsive single-page portfolio built with **Flutter Web**. It showcases my projects, skills, and contact information while demonstrating modern Flutter UI, smooth navigation, and theme switching via BLoC.

### ✨ Highlights

- ⚡ Seamless full-page scrolling with hashed deep links powered by `go_router`.  
- 🌗 Instant light/dark theme toggle via `flutter_bloc`.  
- 🧭 Animated navigation bar that adapts to desktop/tablet/mobile.  
- 🧩 Clean Architecture-inspired layering (data → domain → presentation).  
- 🎬 Micro-interactions and entrance effects using `flutter_animate`.  
- 📦 Local data source for projects/skills that can be swapped with an API.  
- 📱 Fully responsive layouts for desktop, tablet, and mobile.

### 🧱 Project Structure

```
lib/
├── core/
│   └── theme/
│       ├── app_theme.dart        # Light/Dark Material 3 themes
│       └── theme_cubit.dart      # BLoC used for theme switching
├── features/
│   └── portfolio/
│       ├── data/
│       │   ├── datasources/      # Local JSON-like seed data
│       │   ├── models/           # DTOs + serialization helpers
│       │   └── repositories/     # Repository implementation
│       ├── domain/
│       │   ├── entities/         # Core business objects
│       │   ├── repositories/     # Repository contracts
│       │   └── usecases/         # `GetProjects`, `GetSkills`
│       └── presentation/
│           ├── pages/            # `HomePage` (single entry)
│           ├── sections/         # Hero/About/Projects/Skills/Contact
│           └── widgets/          # Navbar, dividers, reusable UI
└── main.dart                      # Manual DI + router + bootstrap
```

---

## 🧠 Customization Guide

- **Personal details:** Update copy in `hero_section.dart`, `about_section.dart`, and `contact_section.dart`.  
- **Projects & skills:** Modify `PortfolioLocalDataSourceImpl` or swap in a remote source.  
- **Branding:** Replace accent colors or inject a new `ThemeData` in `app_theme.dart`.  
- **Deployment:** Run `flutter build web` and host the `build/web` folder on Firebase Hosting, GitHub Pages, Vercel, or any static host.

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
