import 'package:lorem_ipsum/lorem_ipsum.dart';

class Intro {
  static const name = 'Prabesh Pudasaini';
  static const position = 'Flutter Developer';
  final description = loremIpsum(words: 10);
  static const phoneNo = '';
  static const email = '';
}

class Links {
  static const github = '';
  static const linkedin = '';
}

class About {
  static const aboutMe = '';
}

class Experience {}

class Skills {
  static const headings = 'Skills and Experiences';
  static const descriptionFirst =
      'The main area of expertise is mobile application development.';
  static const descriptionSecond =
      'I possess strong skills in building high-performance, cross-platform mobile applications using the Flutter framework. I have experience in designing responsive UIs, integrating APIs, managing state with Riverpod, and optimizing app performance.';
}

class Projects {}

class Contact {
  static const headings = "Let's Build Something Together!";
  static const description =
      "Have a project idea, need a developer, or just want to connect? I'd love to hear from you. Let's create something amazing together!";
  static const descriptionLocation =
      "Based in Kathmandu, Nepal, open to remote opportunities.";
  static const headingsSecondary = "You can reach me at:";
}
