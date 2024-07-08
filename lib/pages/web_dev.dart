import "package:deepconclusions/components/app_bar.dart";
import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class WebDev extends StatefulWidget {
  const WebDev({super.key});

  @override
  WebDevState createState() => WebDevState();
}

class WebDevState extends State<WebDev> {
  bool isLoading = true;

  var controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://deepconclusions.github.io/deep-web/'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: <Widget>[WebViewWidget(controller: controller)],
      ),
    );
  }
}
