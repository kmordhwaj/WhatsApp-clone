import 'package:whatsappclone/domain/entities/my_chat_entity.dart';
import 'package:whatsappclone/domain/repositories/firebase_repository.dart';

class GetMyChatUseCase {
  final FirebaseRepository repository;

  GetMyChatUseCase({required this.repository});

  Stream<List<MyChatEntity>> call(String uid) {
    return repository.getMyChat(uid);
  }
}
