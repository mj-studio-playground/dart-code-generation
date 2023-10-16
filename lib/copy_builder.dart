import 'dart:async';

import 'package:build/build.dart';

class CopyBuilder implements Builder {
  @override
  FutureOr<void> build(BuildStep buildStep) async {
    AssetId inputId = buildStep.inputId;

    var copyAssetId = inputId.changeExtension('.copy.txt');
    var contents = await buildStep.readAsString(inputId);

    await buildStep.writeAsString(copyAssetId, contents);
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.txt': ['.copy.txt'],
      };
}
