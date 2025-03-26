import 'package:auto_scroll_text/auto_scroll_text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {});

  testWidgets(
    'AutoScrollText disposes correctly before delayBefore duration in bouncing mode',
    (tester) async {
      // GIVEN
      await tester.pumpWidget(const AutoScrollText(
        'Hello World',
        delayBefore: Duration(seconds: 6),
        mode: AutoScrollTextMode.bouncing,
      ));

      // Verify the widget is rendered
      expect(find.text('Hello World'), findsOneWidget);

      // The widget is expected to dispose before the delayBefore duration (6 seconds)
      // without throwing any exceptions or errors.

      // WHEN

      // THEN
      // Disposed before delayBefore fire, in this case 6 seconds
      // should be ok
    },
  );
}
