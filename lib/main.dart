import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgetkit/flutter_widgetkit.dart';

void main() {
  runApp(const MaterialApp(home: TextPage()));
}

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  var textController = TextEditingController();

  //  static const MethodChannel _channel = MethodChannel('data_saving_channel');

  // static dynamic setItem(String key, dynamic value, String appGroup) async {
  //   return await _channel.invokeMethod('setItem', <String, dynamic>{
  //     'key': "widgetData",
  //     'value': "data",
  //     'appGroup': "group.flutterios"
  //   });
  // }

  // static void reloadAllTimelines() async {
  //   await _channel.invokeMethod('reloadAllTimelines');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: "Enter widget text",
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      textController.clear();
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                WidgetKit.setItem(
                    'widgetData',
                    jsonEncode(WidgetData(textController.text)),
                    'group.flutterios');
                WidgetKit.reloadAllTimelines();
              },
              child: const Text("Push to Widget"),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetData {
  final String text;

  WidgetData(this.text);

  WidgetData.fromJson(Map<String, dynamic> json) : text = json['text'];

  Map<String, dynamic> toJson() => {'text': text};
}
