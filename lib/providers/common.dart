import 'package:flutter_riverpod/flutter_riverpod.dart';

final welcomeUser = StateProvider<bool>((ref) {
    return true;
});

final chatFontSize = StateProvider<double>((ref) {
    return 12;
});