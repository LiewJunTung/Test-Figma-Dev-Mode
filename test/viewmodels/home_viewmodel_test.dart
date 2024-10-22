import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:testing_figma_dev_mode/app/app.bottomsheets.dart';
import 'package:testing_figma_dev_mode/app/app.locator.dart';
import 'package:testing_figma_dev_mode/ui/common/app_strings.dart';
import 'package:testing_figma_dev_mode/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    group('incrementCounter -', () {
      test('When called once should return  Counter is: 1', () {
        final model = getModel();
        model.incrementCounter();
        expect(model.counterLabel, 'Counter is: 1');
      });
    });

    group('showBottomSheet -', () {
      test('When called, should show custom bottom sheet using notice variant',
          () {
        final bottomSheetService = getAndRegisterBottomSheetService();

        final model = getModel();
        model.showBottomSheet();
        verify(bottomSheetService.showCustomSheet(
          variant: BottomSheetType.notice,
          title: ksHomeBottomSheetTitle,
          description: ksHomeBottomSheetDescription,
        ));
      });
    });
  });
}
