import 'package:url_launcher/url_launcher.dart';

/// Custom exception thrown when there is an error launching a URL.
class UrlLaunchException implements Exception {
  final String message;

  const UrlLaunchException(this.message);

  @override
  String toString() => 'UrlLaunchException: $message';
}

/// Extension on [String] to provide a method for opening URLs in a browser.
extension OpenBrowserExtension on String {
  /// Opens the URL in a browser or external application.
  ///
  /// Throws a [UrlLaunchException] if the URL is invalid or cannot be launched.
  ///
  /// [mode] determines how the URL should be launched:
  /// - [LaunchMode.platformDefault]: Default behavior (browser or external app).
  /// - [LaunchMode.inAppWebView]: Opens the URL in an in-app WebView.
  /// - [LaunchMode.externalApplication]: Opens the URL in an external app.
  Future<void> openInBrowser({
    LaunchMode mode = LaunchMode.platformDefault,
  }) async {
    final uri = Uri.tryParse(this);
    if (uri == null || !uri.hasAbsolutePath) {
      throw UrlLaunchException('Invalid URL: $this');
    }

    if (!await launchUrl(uri, mode: mode)) {
      throw UrlLaunchException('Could not launch $this');
    }
  }
}