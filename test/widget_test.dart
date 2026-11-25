import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/main.dart';
import 'package:myportofolio_mobile/services/api_client.dart';

void main() {
  testWidgets('MyPortfolio app renders successfully', (
    WidgetTester tester,
  ) async {
    // Build the MyPortfolio application.
    await tester.pumpWidget(MyApp(apiClient: ApiClient()));

    // Verify that the main application is displayed.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify the application configuration.
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));

    expect(app.title, 'MyPortfolio');
    expect(app.debugShowCheckedModeBanner, false);
  });
}
