import 'package:ai_project/screen/controller/ai_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class AiWebViewScreen extends StatefulWidget {
  const AiWebViewScreen({Key? key}) : super(key: key);

  @override
  State<AiWebViewScreen> createState() => _AiWebViewScreenState();
}

class _AiWebViewScreenState extends State<AiWebViewScreen> {
  AiController controller = Get.put(AiController());
  InAppWebViewController? webViewController;
  PullToRefreshController? pullToRefreshController;

  String link = '';

  @override
  void initState() {
    super.initState();

    link = Get.arguments;
    pullToRefreshController = PullToRefreshController(
      onRefresh: () {
        webViewController!.reload();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse('$link'),
          ),
          onLoadStart: (controller, url) {
            webViewController=controller;
            pullToRefreshController!.endRefreshing();

          },
          onLoadStop: (controller, url) {
            webViewController=controller;
            pullToRefreshController!.endRefreshing();

          },
          onProgressChanged: (con, progress) {
            webViewController=con;
            pullToRefreshController!.endRefreshing();

            controller.changeProg(progress/100);

          },
        ),
      ),
    );
  }
}
