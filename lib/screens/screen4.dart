// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class Screen4 extends StatefulWidget {
//   const Screen4({super.key});

//   @override
//   State<Screen4> createState() => _Screen4State();
// }

// class _Screen4State extends State<Screen4> {
//   late WebViewController controller;
//   @override
//   void initState(){
//      controller = WebViewController()
//   ..setJavaScriptMode(JavaScriptMode.unrestricted)
//   ..setBackgroundColor(const Color(0x00000000))
//   ..setNavigationDelegate(
//     NavigationDelegate(
//       onProgress: (int progress) {
//         // Update loading bar.
//       },
//       onPageStarted: (String url) {},
//       onPageFinished: (String url) {},
//       onWebResourceError: (WebResourceError error) {},
//       onNavigationRequest: (NavigationRequest request) {
//         if (request.url.startsWith('https://www.skype.com/en/')) {
//           return NavigationDecision.prevent;
//         }
//         return NavigationDecision.navigate;
//       },
//     ),
//   )
//   ..loadRequest(Uri.parse('https://www.skype.com/en/'));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(title: const Text('Skype')),
//     body: WebViewWidget(controller: controller),
//     );
//   }
// }