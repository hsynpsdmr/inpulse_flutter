import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InstagramLoginScreen extends StatefulWidget {
  const InstagramLoginScreen({super.key});

  @override
  State<InstagramLoginScreen> createState() => _InstagramLoginScreenState();
}

class _InstagramLoginScreenState extends State<InstagramLoginScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse('https://www.instagram.com/accounts/login/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFF22252A),
        title: const Text(
          'Sign in with Instagram',
          style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Poppins', fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            /// WebView
            Positioned.fill(bottom: 60, child: WebViewWidget(controller: _controller)),

            /// Bottom Bar
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                color: const Color(0xFF22252A),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: const Text(
                  'Your password, user information and interactions are not recorded. You can use it safely.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
