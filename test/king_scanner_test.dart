import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:king_scanner/king_scanner.dart';

void main() {
  const MethodChannel channel = MethodChannel('king_scanner');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

//  test('getPlatformVersion', () async {
//    expect(await KingScanner.platformVersion, '42');
//  });
}
