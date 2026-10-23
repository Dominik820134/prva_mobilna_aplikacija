import 'package:flutter_test/flutter_test.dart';
import 'package:prvaaplikacija/main.dart';

void main() {
  testWidgets('Band app loads the band list screen', (WidgetTester tester) async {
    await tester.pumpWidget(const BandApp());

    expect(find.text('Glazbeni Bendovi'), findsOneWidget);
    expect(find.text('Azra'), findsOneWidget);
  });
}
