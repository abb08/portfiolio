import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:portfolio/models/experience.dart';

final List<Experience> experiences = [
  Experience(
    date: '2024-01-01',
    jobTitle: 'Flutter Developer',
    companyName: 'ABC Technology',
    jobDescription: loremIpsum(words: 40),
    toolsUsed: const [
      'Dart',
      'Flutter',
      'Firebase',
      'Material UI',
    ],
    link: '',
  ),
];
