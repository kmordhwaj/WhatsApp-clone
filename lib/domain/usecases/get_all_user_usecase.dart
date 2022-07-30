import 'package:whatsappclone/domain/entities/user_entity.dart';
import 'package:whatsappclone/domain/repositories/firebase_repository.dart';

class GetAllUserUseCase {
  final FirebaseRepository repository;

  GetAllUserUseCase({required this.repository});

  Stream<List<UserEntity>> call() {
    return repository.getAllUsers();
  }
}
