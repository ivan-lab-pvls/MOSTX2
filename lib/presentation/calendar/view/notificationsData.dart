import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ShowLiveMatches extends StatelessWidget {
  final String matches;

  const ShowLiveMatches({super.key, required this.matches});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 37, 254),
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(matches),
          ),
        ),
      ),
    );
  }
}
