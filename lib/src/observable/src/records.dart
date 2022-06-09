// ignore: todo
// TODO Implement this library.
library observable.src.records;

/// Result of a change to an observed object.
class ChangeRecord {
  /// Constructor
  const ChangeRecord();

  /// Signifies a change occurred, but without details of the specific change.
  ///
  /// May be used to produce lower-GC-pressure records where more verbose change
  /// records will not be used directly.
  static const List<ChangeRecord> any = <ChangeRecord>[ChangeRecord()];

  /// Signifies no changes occurred.
  static const List<ChangeRecord> none = <ChangeRecord>[];
}