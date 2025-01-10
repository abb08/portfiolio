import 'package:portfolio/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchLink(String urlToLaunch) async {
  final Uri url = Uri.parse(urlToLaunch);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

Future<void> makePhoneCall() async {
  final Uri phoneUri = Uri(
    scheme: 'tel',
    path: Links.phoneNo,
  );
  if (!await launchUrl(phoneUri)) {
    throw Exception('Could not launch $phoneUri');
  }
}

Future<void> sendEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: Links.email,
  );
  if (!await launchUrl(emailUri)) {
    throw Exception('Could not launch $emailUri');
  }
}
