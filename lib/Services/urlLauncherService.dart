import 'package:url_launcher/url_launcher.dart';

class Urllauncherservice {
  String link;
  Urllauncherservice({required this.link}) {}
  Future<void> LaunchUrl() async {
    final Uri _url = Uri.parse(link);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
