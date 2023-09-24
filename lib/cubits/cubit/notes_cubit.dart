import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_hive/models/notes_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchNotes() async {
    emit(NotesLoading());

    try {
      var notesBox = Hive.box<NotesModel>(box);
      List<NotesModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notesModel: notes));
    } catch (e) {
      emit(NotesFailure(error: e.toString()));
    }
  }
}
