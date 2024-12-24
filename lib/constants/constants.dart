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
  static const aboutMe = '''Hi, I'm Prabesh Pudasaini, a passionate mobile app developer specializing in Flutter. With a strong foundation in cross-platform development and a keen eye for user-centric design, I strive to create seamless and intuitive mobile experiences.

I love the challenge of turning ideas into functional, responsive apps that work beautifully on both Android and iOS. From crafting efficient code to debugging and polishing designs, every part of the development process excites me.

In addition to Flutter and Dart, I have experience working with tools like Firebase, REST APIs, and Git, which help me build scalable, high-quality applications.''';
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
