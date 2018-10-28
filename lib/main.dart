import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      routes: {
        "/": (_) => WebViewDemo(),
      },
    );
  }
}


class WebViewDemo extends StatelessWidget {
  final selectedUrl = 'http://www.zuqiuhai.com';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      url: selectedUrl,
      appBar: AppBar(
        title: Text('Widget webview'),
      ),
      withZoom: true,
      withLocalStorage: true,
    );
  }
}
