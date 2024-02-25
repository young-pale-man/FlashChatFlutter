import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({
    super.key,
    required this.messageText,
    required this.messageSender,
    required this.isMessageFromMe,
  });

  final String messageText;
  final String messageSender;
  final bool isMessageFromMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isMessageFromMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
            ),
            messageSender,
          ),
          Material(
            borderRadius: isMessageFromMe
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                : BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
            elevation: 5,
            color: isMessageFromMe ? Colors.black : Colors.amber,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
                messageText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
