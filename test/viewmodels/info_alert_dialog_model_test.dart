import 'package:flutter_test/flutter_test.dart';
import 'package:testing_figma_dev_mode/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('InfoAlertDialogModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
