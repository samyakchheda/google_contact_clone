import 'package:uuid/uuid.dart';
import '../domain/contact.dart';

class ContactRepository {
  final List<Contact> _contacts = [];

  ContactRepository() {
    _contacts.addAll([
      Contact(id: const Uuid().v4(), name: 'Alice Johnson', phone: '9876543210', email: 'alice.johnson@example.com'),
      Contact(id: const Uuid().v4(), name: 'Bob Smith', phone: '9123456780', email: 'bob.smith@example.com'),
      Contact(id: const Uuid().v4(), name: 'Charlie Brown', phone: '9988776655', email: 'charlie.brown@example.com'),
      Contact(id: const Uuid().v4(), name: 'David Lee', phone: '9001122233', email: 'david.lee@example.com'),
      Contact(id: const Uuid().v4(), name: 'Ella Fitzgerald', phone: '9456721890', email: 'ella.fitzgerald@example.com'),
      Contact(id: const Uuid().v4(), name: 'Frank Harris', phone: '9812312345', email: 'frank.harris@example.com'),
      Contact(id: const Uuid().v4(), name: 'Grace Kim', phone: '7896541230', email: 'grace.kim@example.com'),
      Contact(id: const Uuid().v4(), name: 'Harry Potter', phone: '7896541231', email: 'harry.potter@example.com'),
      Contact(id: const Uuid().v4(), name: 'Isla Fisher', phone: '7788991122', email: 'isla.fisher@example.com'),
      Contact(id: const Uuid().v4(), name: 'Jack Reacher', phone: '6677889900', email: 'jack.reacher@example.com'),
      Contact(id: const Uuid().v4(), name: 'Katie Holmes', phone: '7766554433', email: 'katie.holmes@example.com'),
      Contact(id: const Uuid().v4(), name: 'Liam Neeson', phone: '9988001122', email: 'liam.neeson@example.com'),
      Contact(id: const Uuid().v4(), name: 'Mona Lisa', phone: '9111199999', email: 'mona.lisa@example.com'),
      Contact(id: const Uuid().v4(), name: 'Nathan Drake', phone: '9556677880', email: 'nathan.drake@example.com'),
      Contact(id: const Uuid().v4(), name: 'Olivia Wilde', phone: '7008009000', email: 'olivia.wilde@example.com'),
      Contact(id: const Uuid().v4(), name: 'Peter Parker', phone: '8877665544', email: 'peter.parker@example.com'),
      Contact(id: const Uuid().v4(), name: 'Quentin Tarantino', phone: '7766889900', email: 'quentin.tarantino@example.com'),
      Contact(id: const Uuid().v4(), name: 'Rachel Green', phone: '9345678901', email: 'rachel.green@example.com'),
      Contact(id: const Uuid().v4(), name: 'Steve Rogers', phone: '8765432190', email: 'steve.rogers@example.com'),
      Contact(id: const Uuid().v4(), name: 'Tony Stark', phone: '9998887776', email: 'tony.stark@example.com'),
    ]);

  }

  List<Contact> getAllContacts() {
    _contacts.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    return List.unmodifiable(_contacts);
  }

  void addContact(String name, String phone, {String? email, String? profileImagePath}) {
    _contacts.add(Contact(id: const Uuid().v4(), name: name, phone: phone, email: email, profileImagePath: profileImagePath));
  }

  void updateContact(Contact updatedContact) {
    final index = _contacts.indexWhere((c) => c.id == updatedContact.id);
    if (index != -1) {
      _contacts[index] = updatedContact;
    }
  }

  void deleteContact(String id) {
    _contacts.removeWhere((c) => c.id == id);
  }
}