import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/experience_model.dart';
import '../models/project_model.dart';
import '../models/skill_model.dart';

abstract class PortfolioLocalDataSource {
  Future<List<ProjectModel>> getProjects();
  Future<List<SkillModel>> getSkills();
  Future<List<ExperienceModel>> getExperiences();
}

class PortfolioLocalDataSourceImpl implements PortfolioLocalDataSource {
  @override
  Future<List<ProjectModel>> getProjects() async {
    // Simulating a delay if needed, but for local data it's instant
    return const [
      ProjectModel(
        imageUrl:
            'https://images.unsplash.com/photo-1516245834210-c4c142787335?auto=format&fit=crop&w=1200&q=60',
        title: 'Responsive Text Plus',
        description:
            'Customizable text-scaling package that keeps typography consistent across mobile, web, and desktop with adaptive fonts, multi-line handling, and overflow control.',
        technologies: ['Flutter', 'Dart', 'Responsive UI'],
        githubUrl: 'https://github.com/muhammednajeebay/responsive_text_plus',
      ),
      ProjectModel(
        imageUrl:
            'https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?auto=format&fit=crop&w=1200&q=60',
        title: 'Placement Assistance App',
        description:
            'Role-based placement management system for companies and students with structured approval flows, secure authentication, REST integrations, and predictable Provider-driven state.',
        technologies: ['Flutter', 'Provider', 'REST'],
        githubUrl:
            'https://github.com/muhammednajeebay/placement_assistance_app',
      ),
      ProjectModel(
        imageUrl:
            'https://images.unsplash.com/photo-1522199710521-72d69614c702?auto=format&fit=crop&w=1200&q=60',
        title: 'News Hunt',
        description:
            'Real-time news aggregation platform with categorized feeds, bookmarking, API caching, pagination, and resilient error handling for smooth reading experiences.',
        technologies: ['Flutter', 'Provider', 'REST'],
        githubUrl: 'https://github.com/muhammednajeebay/news-app',
      ),
      ProjectModel(
        imageUrl:
            'https://images.unsplash.com/photo-1523475472560-d2df97ec485c?auto=format&fit=crop&w=1200&q=60',
        title: 'Quiz App',
        description:
            'Interactive quiz experience powered by API-driven questions, timers, progress tracking, real-time scoring, and modular widgets that minimize rebuilds.',
        technologies: ['Flutter', 'Provider', 'REST'],
        githubUrl: 'https://github.com/muhammednajeebay/quiz-app',
      ),
    ];
  }

  @override
  Future<List<SkillModel>> getSkills() async {
    return const [
      SkillModel(
        icon: FontAwesomeIcons.mobileScreenButton,
        name:
            'Flutter & Mobile · Flutter, Dart, Responsive UI, Animations, Cross-Platform',
      ),
      SkillModel(
        icon: FontAwesomeIcons.codeBranch,
        name:
            'State Management · BLoC, Cubit, Provider, GetX with predictable flows',
      ),
      SkillModel(
        icon: FontAwesomeIcons.layerGroup,
        name:
            'Architecture · Clean Architecture, Modular, MVC, SOLID, GoRouter, Navigator 2.0',
      ),
      SkillModel(
        icon: FontAwesomeIcons.cloud,
        name:
            'Backend & Realtime · REST, GraphQL, WebSocket, Supabase, Firebase',
      ),
      SkillModel(
        icon: FontAwesomeIcons.database,
        name: 'Storage · Hive, Sqflite, SharedPreferences',
      ),
      SkillModel(
        icon: FontAwesomeIcons.toolbox,
        name:
            'Tools & Testing · Git, GitHub, Postman, Android Studio, VS Code, API Profiling, Unit & Widget Testing, CI/CD (Basics)',
      ),
    ];
  }

  @override
  Future<List<ExperienceModel>> getExperiences() async {
    return const [
      ExperienceModel(
        company: 'NEXTEONS Software Solutions',
        role: 'Flutter Developer',
        period: 'May 2024 – Oct 2025',
        location: 'Kerala, India',
        highlights: [
          'Engineered ERP, LMS, and workflow suites with modular Clean Architecture to cut duplication and improve maintainability.',
          'Developed real-time dashboards with WebSocket and optimized GraphQL queries to keep performance stable under heavy concurrency.',
          'Led API profiling, caching, and refactors that reduced latency and kept UI interactions responsive.',
          'Collaborated with backend engineers and designers in Agile/Scrum ceremonies, contributing to sprint planning, reviews, and debugging.'
        ],
        techStack: [
          'Flutter',
          'GetX',
          'BLoC',
          'GraphQL',
          'WebSocket',
          'Supabase'
        ],
      ),
      ExperienceModel(
        company: 'Luminar TechnoHub',
        role: 'Flutter Intern',
        period: 'Nov 2023 – May 2024',
        location: 'Kerala, India',
        highlights: [
          'Integrated REST APIs and Firebase services to enable secure auth, realtime sync, and cloud-backed workflows.',
          'Built reusable UI flows and feature modules with Provider to reduce rebuild overhead and improve maintainability.',
          'Applied Clean Architecture patterns across modules to keep features testable and scalable.',
          'Delivered DIGIBANK and YUMMLY modules covering account views, transactions, recipes, uploads, bookmarking, and category browsing.'
        ],
        techStack: [
          'Flutter',
          'Provider',
          'REST API',
          'Firebase',
          'Clean Architecture'
        ],
      ),
    ];
  }
}
