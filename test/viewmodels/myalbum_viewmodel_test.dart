import 'package:flutter_test/flutter_test.dart';
import 'package:my_album/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MyalbumViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
