import 'package:animals/feature/detail/presentation/manager/state.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class AppCubit extends Cubit<AppState> {
  Map<String, bool> favorites = {};

  AppCubit() : super(InitialState()) {
    loadPreferences(); // Load favorites when the cubit is created
  }

  // Toggle favorite status and save it to SharedPreferences
  void toggleFavorite(String dogName) {
    favorites[dogName] = !(favorites[dogName] ?? false);  // Toggle favorite status
    savePreferences();  // Save updated favorite status
    emit(ChoosenFavouriteColor());  // Emit a new state to update the UI
  }

  // Get the favorite status of a specific dog
  bool isFavorite(String dogName) {
    return favorites[dogName] ?? false;  // Return the favorite status of the dog
  }

  // Save favorites to SharedPreferences
  Future<void> savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = jsonEncode(favorites);  // Convert the favorites map to JSON
    await prefs.setString('favorites', favoritesJson);  // Save as a string
  }

  // Load favorites from SharedPreferences
  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getString('favorites');  // Load the JSON string
    if (favoritesJson != null) {
      favorites = Map<String, bool>.from(jsonDecode(favoritesJson));  // Convert JSON back to Map
    }
    emit(ChoosenFavouriteColor());  // Emit a new state to update the UI
  }
}


/*
class AppCubit extends Cubit<AppState> {
  Map<String, bool> favorites = {};

  AppCubit() : super(InitialState());

  void toggleFavorite(String dogName) {
    favorites[dogName] = !(favorites[dogName] ?? false); // Toggle favorite status
    emit(ChoosenFavouriteColor()); // Emit a new state to update the UI
  }

  bool isFavorite(String dogName) {
    return favorites[dogName] ?? false; // Return the favorite status of the dog
  }

}
*/
// class AppCubit extends Cubit<AppState> {
//   Map<String, bool> favorites = {};
//
//   AppCubit() : super(InitialState()) {
//     _loadFavorites();
//   }
//
//   // Load favorite status from SharedPreferences
//   Future<void> _loadFavorites() async {
//     final prefs = await SharedPreferences.getInstance();
//     final keys = prefs.getKeys();
//
//     for (var key in keys) {
//       favorites[key] = prefs.getBool(key) ?? false;
//     }
//
//     emit(ChoosenFavouriteColor()); // Emit state to notify listeners
//   }
//
//   // Toggle favorite status and save it to SharedPreferences
//   Future<void> toggleFavorite(String dogName) async {
//     favorites[dogName] = !(favorites[dogName] ?? false);
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool(dogName, favorites[dogName]!);
//
//     emit(ChoosenFavouriteColor()); // Emit state to notify listeners
//   }
//
//   // Get the favorite status of a specific dog
//   bool isFavorite(String dogName) {
//     return favorites[dogName] ?? false;
//   }
// }


/*class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialState());
  bool heart = false;
  bool is_available = false;
  bool add=false;

  void choosenHeart() {
    heart = !heart;
    isavailable();
    emit(ChoosenFavouriteColor());
  }

  void isavailable() {
    is_available = heart;
    emit(ChoosenFavouriteColor());
  }
  void is_added() {
    add=true;
    emit(AnimalsAdded());
  }
}*/
