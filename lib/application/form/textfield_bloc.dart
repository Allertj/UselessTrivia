import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'textfield_bloc.freezed.dart';

@singleton
class TextFieldBloc extends Bloc<TextFieldEvent, TextFieldState> {

  TextFieldBloc() : super(const TextFieldState.currentEntry("")) {
    on<EntryChanged>((event, emit) async {
      emit(TextFieldState.currentEntry(event.newEntry));
    });
  }
}

@freezed
abstract class TextFieldEvent with _$TextFieldEvent {
  const factory TextFieldEvent.entryChanged(String newEntry) = EntryChanged;
}

@freezed
abstract class TextFieldState with _$TextFieldState {
  const factory TextFieldState.currentEntry(String currentEntry) = CurrentEntry;
}
