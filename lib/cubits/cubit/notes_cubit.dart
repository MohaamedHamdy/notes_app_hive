import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_hive/models/notes_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NotesModel>? notes;

  fetchNotes() async {
    var notesBox = Hive.box<NotesModel>(box);
    notes = notesBox.values.toList();
    emit(NotesSuccess(notesModel: notes!));
  }
}
