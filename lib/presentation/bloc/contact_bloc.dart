import 'package:flutter_bloc/flutter_bloc.dart';

import 'contact_event.dart';
import 'contact_state.dart';
import '../../data/contact_repository.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository repository;

  ContactBloc(this.repository) : super(ContactInitial()) {
    on<LoadContacts>((event, emit) {
      final contacts = repository.getAllContacts();
      emit(ContactLoaded(contacts));
    });

    on<AddContact>((event, emit) {
      repository.addContact(
        event.name,
        event.phone,
        email: event.email,
        profileImagePath: event.profileImagePath, // pass this!
      );
      add(LoadContacts());
    });


    on<UpdateContact>((event, emit) {
      repository.updateContact(event.contact);
      add(LoadContacts());
    });

    on<DeleteContact>((event, emit) {
      repository.deleteContact(event.id);
      add(LoadContacts());
    });

    on<SearchContacts>((event, emit) {
      final all = repository.getAllContacts();
      final filtered = all.where((c) {
        final query = event.query.toLowerCase();
        return c.name.toLowerCase().contains(query) || c.phone.contains(query);
      }).toList();
      emit(ContactLoaded(filtered));
    });

  }
}
