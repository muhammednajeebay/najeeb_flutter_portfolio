import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchLink(String url) async {
    final launched = await launchUrlString(url);
    if (!launched) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect(), MoveEffect(begin: Offset(0, 24))],
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        shadowColor:
            Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 32),
          child: Column(
            children: [
              Text("Contact Me",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              const SizedBox(height: 16),
              Text(
                "Reach out via email or connect with me on LinkedIn or GitHub.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email,
                      color: Theme.of(context).colorScheme.primary),
                  const SizedBox(width: 6),
                  SelectableText(
                    'muhammednajeeb.ay@gmail.com',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on,
                      color: Theme.of(context).colorScheme.secondary),
                  const SizedBox(width: 6),
                  SelectableText(
                    'Kerala, India',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                children: [
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.github),
                    iconSize: 34,
                    color: const Color(0xFF24292F),
                    onPressed: () =>
                        _launchLink('https://github.com/muhammednajeebay'),
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.linkedin),
                    iconSize: 34,
                    color: const Color(0xFF0A66C2),
                    onPressed: () => _launchLink(
                        'https://www.linkedin.com/in/muhammednajeebay'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
