import 'package:demo_remote_config/domain/entity/category_model.dart';
import 'package:demo_remote_config/domain/repository/firebase_remote_config_repository.dart';
import 'package:demo_remote_config/presentation/bloc/cake_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CakeBloc extends Cubit<CakeState> {
  CakeBloc() : super(CakeState.loading());

  Future getCategories(String template) async {
    List<CategoryModel> categories = await FirebaseRemoteConfigRepository().getCategories(template);
    emit(CakeState(categories));
  }
}