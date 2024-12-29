import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroView extends StatelessWidget {
  IntroView({super.key});

  final Uri _url = Uri.parse(
      'https://github.com/prabeshpudasaini/Portfolio/blob/main/assets/pdf/Prabesh_Pudasaini_Flutter_Developer_Resume.pdf');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(Intro.name),
        const Text(Intro.position),
        Text(Intro().description),
        OutlinedButton.icon(
            onPressed: () {
              _launchUrl();
            },
            icon: const Icon(Icons.picture_as_pdf),
            label: const Text('View Resume'))
      ],
    );
  }
}
