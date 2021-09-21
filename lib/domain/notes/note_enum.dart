import 'package:flutter/foundation.dart';

enum TaskStatus {
  OPEN,
  IN_PROGRESS,
  DONE,
  HOLD,
}
extension StatusSt on TaskStatus {
   String get inString => describeEnum(this);
} 


enum NoteStates {
  unspecified,
  pinned,
  archived,
  deleted,
}

extension StateSt on NoteStates {
   String get inString => describeEnum(this);
} 
