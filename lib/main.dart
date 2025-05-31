import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/contact_repository.dart';
import 'presentation/bloc/contact_bloc.dart';
import 'presentation/bloc/contact_event.dart';
import 'presentation/bloc/theme_cubit.dart';
import 'presentation/contact_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        RepositoryProvider(create: (_) => ContactRepository()),
        BlocProvider(create: (context) =>
        ContactBloc(context.read<ContactRepository>())..add(LoadContacts())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: 'Contacts App',
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: themeMode,
            home: ContactListScreen(),
          );
        },
      ),
    );
  }
}
