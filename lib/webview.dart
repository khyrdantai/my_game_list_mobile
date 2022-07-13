import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  WebViewApp(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}


class _WebViewAppState extends State<WebViewApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WebView(
        initialUrl: 'https://my-game-list-front.herokuapp.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
