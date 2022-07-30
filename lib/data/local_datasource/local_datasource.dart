// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:contacts_service/contacts_service.dart';
import 'package:whatsappclone/domain/entities/contact_entity.dart';

abstract class LocalDataSource {
  Future<List<ContactEntity>> getDeviceNumbers();
}

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<List<ContactEntity>> getDeviceNumbers() async {
    List<ContactEntity> contacts = [];
    final getContactsData = await ContactsService.getContacts();

    for (var myContact in getContactsData) {
      for (var phoneData in myContact.phones!) {
        var user;
        var uid;
        contacts.add(ContactEntity(
          phoneNumber: phoneData.value!,
          label: myContact.displayName!,
          status: user.status,
          uid: uid,
        ));
      }
    }
    return contacts;
  }
}
