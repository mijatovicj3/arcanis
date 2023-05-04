import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QrPage extends StatefulWidget {
  QrPage({Key? key}) : super(key: key);

  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  bool _isVisible = false;

  _QrPageState() {}

  @override
  Widget build(BuildContext context) {
    debugPrint('debugPrint');
    return Stack(
      children: [
        MobileScanner(
          // fit: BoxFit.contain,
          onDetect: (capture) {
            final Barcode barcode = capture.barcodes[0];
            debugPrint('Barcode found! ${barcode.rawValue}');
            final uri = Uri.parse("${barcode.rawValue}");
            _launchURL("${barcode.rawValue}");
          },
        ),
      ],
    );
    ;
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Could not launch $url');
    }
  }
}
