import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';
import 'messages_en.dart' deferred as messages_en;
import 'messages_de.dart' deferred as messages_de;


typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'en': () => messages_en.loadLibrary(),
  'de': () => messages_de.loadLibrary(),
  'und': () => messages_en.loadLibrary(),
};
MessageLookupByLibrary? _findExact(localeName) {
  switch (localeName) {
    case "en":
      return messages_en.messages;
    case "de":
      return messages_de.messages;
    case "und":
      return messages_en.messages;
    default:
      return null;
  }
}


Future<bool> initializeMessages(String localeName) async {

  var availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null
  );

  if (availableLocale == null) {
    return false;
  }

  var lib = _deferredLibraries[availableLocale];
  if (lib != null) {
    await lib();
  }

  initializeInternalMessageLookup(() => CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);

  return true;
}

bool _messagesExistFor(String locale) {

  try {
    return _findExact(locale) != null;
  }
  catch (e) {
    return false;
  }
}

MessageLookupByLibrary? _findGeneratedMessagesFor(locale) {

  var actualLocale = Intl.verifiedLocale(
      locale,
      _messagesExistFor,
      onFailure: (_) => null
  );
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}

    