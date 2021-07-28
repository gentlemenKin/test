
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main()=>runApp(new MaterialApp(
  title: '测试 webview',
  home: WebViewPage(),
));

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  WebViewController _controller;
  String _title = "测试webview";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("$_title"),
      ),
      child: SafeArea(
        child: WebView(
          initialUrl: "https://flutterchina.club/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller){
            _controller = controller;
          },
          onPageFinished: (url){
            _controller.evaluateJavascript("decument.title").then((value) => _title = value);
          },
//          navigationDelegate: (NavigationRequest request){
//            if(request.url.startsWith(""))
//          },
        ),
      ),
    );
  }
}
