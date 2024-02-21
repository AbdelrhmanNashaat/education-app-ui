import 'package:education_app_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CourseView extends StatefulWidget {
  final String url;
  const CourseView({super.key, required this.url});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  bool isLoading = true;
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            setState(() {
              isLoading = false;
            });
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidget(controller: controller),
          if (isLoading)
            const Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: kBlueColor,
                strokeWidth: 4.5,
              ),
            ),
        ],
      ),
    );
  }
}
