import "package:deepconclusions/components/app_bar.dart";
import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class DataScience extends StatefulWidget {
  const DataScience({super.key});

  @override
  DataScienceState createState() => DataScienceState();
}

class DataScienceState extends State<DataScience> {
  bool isLoading = true;

  var controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
        Uri.parse('https://deepconclusions.github.io/deepconclusions/'));

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
