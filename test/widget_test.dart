import 'package:flutter_test/flutter_test.dart';

import 'package:sale_kit/main.dart';

void main() {
  testWidgets('Home page renders category cards', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('อาหารเสริม'), findsOneWidget);
    expect(find.text('เครื่องสำอาง'), findsOneWidget);
  });
}
