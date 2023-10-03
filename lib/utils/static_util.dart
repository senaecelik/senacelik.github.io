import 'package:url_launcher/url_launcher.dart';

class StaticUtils {
  static String hi = "assets/images/hi.gif";
  static String loading = 'assets/images/loading.json';
  static String error = 'assets/images/error.json';

  static void openURL(String url) => launchUrl(
        Uri.parse(url),
      );
}
