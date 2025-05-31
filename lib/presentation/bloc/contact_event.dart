import 'package:equatable/equatable.dart';
import '../../domain/contact.dart';


abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class LoadContacts extends ContactEvent {}

class AddContact extends ContactEvent {
  final String name;
  final String phone;
  final String? email;
  final String? profileImagePath;

  const AddContact({required this.name, required this.phone, this.email, this.profileImagePath});

  @override
  List<Object?> get props => [name, phone, email, profileImagePath];
}

class UpdateContact extends ContactEvent {
  final Contact contact;

  const UpdateContact(this.contact);

  @override
  List<Object?> get props => [contact];
}

class DeleteContact extends ContactEvent {
  final String id;

  const DeleteContact(this.id);

  @override
  List<Object?> get props => [id];
}

class SearchContacts extends ContactEvent {
  final String query;

  const SearchContacts(this.query);

  @override
  List<Object?> get props => [query];
}
