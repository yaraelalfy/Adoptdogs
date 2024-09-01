import 'package:animals/feature/DailyTask/presentation/manager/state.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TaskCubit extends Cubit<TaskState> {
  Map<String, bool> favorites = {};
  Map<String, bool> done = {};

  TaskCubit() : super(InitialState()) {
    loadPreferences();
  }

  void toggleDone(String name) {
    done[name] = !(done[name] ?? false);
    savePreferences();
    emit(ChoosenDailyTasks());
  }

  bool isDone(String name) {
    return done[name] ?? false;
  }
  Future<void> savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final doneJson = jsonEncode(done);
    await prefs.setString('done', doneJson);
  }

  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final doneJson = prefs.getString('done');
    if (doneJson != null) {
      done = Map<String, bool>.from(jsonDecode(doneJson));
    }
    emit(ChoosenDailyTasks());
  }
}
