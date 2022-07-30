import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsappclone/domain/entities/text_message_entity.dart';

class TextMessageModel extends TextMessageEntity {
  const TextMessageModel({
    required String senderName,
    required String sederUID,
    required String recipientName,
    required String recipientUID,
    required String messageType,
    required String message,
    required String messageId,
    required Timestamp time,
  }) : super(
          senderName: senderName,
          sederUID: sederUID,
          recipientName: recipientName,
          recipientUID: recipientUID,
          messsageType: messageType,
          message: message,
          messageId: messageId,
          time: time,
        );
  factory TextMessageModel.fromSnapShot(DocumentSnapshot snapshot) {
    return TextMessageModel(
      senderName: snapshot['senderName'],
      sederUID: snapshot['sederUID'],
      recipientName: snapshot['recipientName'],
      recipientUID: snapshot['recipientUID'],
      messageType: snapshot['messageType'],
      message: snapshot['message'],
      messageId: snapshot['messageId'],
      time: snapshot['time'],
    );
  }
  Map<String, dynamic> toDocument() {
    return {
      "senderName": senderName,
      "sederUID": sederUID,
      "recipientName": recipientName,
      "recipientUID": recipientUID,
      "messageType": messsageType,
      "message": message,
      "messageId": messageId,
      "time": time,
    };
  }
}
