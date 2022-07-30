import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:whatsappclone/domain/entities/my_chat_entity.dart';

class MyChatModel extends MyChatEntity {
  const MyChatModel({
    required String senderName,
    required String senderUID,
    required String recipientName,
    required String recipientUID,
    required String channelId,
    required String profileURL,
    required String recipientPhoneNumber,
    required String senderPhoneNumber,
    required String recentTextMessage,
    required bool isRead,
    required bool isArchived,
    required Timestamp time,
  }) : super(
          senderName: senderName,
          senderUID: senderUID,
          recipientName: recipientName,
          recipientUID: recipientUID,
          channelId: channelId,
          profileURL: profileURL,
          recipientPhoneNumber: recipientPhoneNumber,
          senderPhoneNumber: senderPhoneNumber,
          recentTextMessage: recentTextMessage,
          isRead: isRead,
          isArchived: isArchived,
          time: time,
        );

  factory MyChatModel.fromSnapShot(DocumentSnapshot snapshot) {
    return MyChatModel(
      senderName: snapshot['senderName'],
      senderUID: snapshot['senderUID'],
      senderPhoneNumber: snapshot['senderPhoneNumber'],
      recipientName: snapshot['recipientName'],
      recipientUID: snapshot['recipientUID'],
      recipientPhoneNumber: snapshot['recipientPhoneNumber'],
      channelId: snapshot['channelId'],
      time: snapshot['time'],
      isArchived: snapshot['isArchived'],
      isRead: snapshot['isRead'],
      recentTextMessage: snapshot['recentTextMessage'],
      profileURL: snapshot['profileURL'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "senderName": senderName,
      "senderUID": senderUID,
      "recipientName": recipientName,
      "recipientUID": recipientUID,
      "channelId": channelId,
      "profileURL": profileURL,
      "recipientPhoneNumber": recipientPhoneNumber,
      "senderPhoneNumber": senderPhoneNumber,
      "recentTextMessage": recentTextMessage,
      "isRead": isRead,
      "isArchived": isArchived,
      "time": time,
    };
  }
}
