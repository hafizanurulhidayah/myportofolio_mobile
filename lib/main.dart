import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/services/api_client.dart';
import 'package:myportofolio_mobile/services/auth_state.dart';

void main() {
  runApp(MyApp(apiClient: ApiClient()));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.apiClient, super.key});

  final ApiClient apiClient;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiClient>(
          create: (_) => apiClient,
          dispose: (_, client) => client.dispose(),
        ),
        ChangeNotifierProvider<AuthState>(
          create: (context) => AuthState(context.read<ApiClient>()),
        ),
      ],
      child: MaterialApp(
        title: 'MyPortfolio',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFF35F9B),
            primary: const Color(0xFFF35F9B),
            secondary: const Color(0xFFF7CFDF),
            surface: const Color(0xFFFFFDF9),
          ),
          scaffoldBackgroundColor: const Color(0xFFF5E8E2),
          useMaterial3: true,
        ),

        home: const MyHomePage(),
      ),
    );
  }
}
