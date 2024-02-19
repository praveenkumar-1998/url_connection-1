import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   late WebViewController controller;

  @override
  void initState(){
     controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://mapims.online/staff2/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://www.mapims.online/staff2/'));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      // appBar: AppBar(title: const Text('Mapims')),
      body: WebViewWidget(controller: controller),
      ),
    );
  }
}