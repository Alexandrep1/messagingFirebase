import 'package:flutter/material.dart';

class NotificationDetail extends StatelessWidget {
  final String title;
  final String body;
  final String? data;

  const NotificationDetail({
    Key? key,
    required this.title,
    required this.body,
    this.data
   }) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detalhes da notificação")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("titulo: $title"),
            Text("mensagem: $body"),
            if(data != null)...[
              Text("demais informações: ${data}"),
            ],
          ],
        ),
      )
    );
  }
}