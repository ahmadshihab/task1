import 'package:bloc/bloc.dart';
import 'package:task1_app/data/repository/irepository.dart';
import 'products_event.dart';
import 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  IRepository _repository;

  ProductsBloc(this._repository);

  @override
  ProductsState get initialState => ProductsState.initail();

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }

    if (event is GetMenu) {
      yield state.rebuild((b) => b..items.clear());

      final data = await _repository.getMenus(event.key);
      try {
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..items.addAll(data));
      } catch (e) {
        print('GetMenus Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..menus = null
          ..error = "Something went wrong");
      }
    }

    if (event is AddItem) {
      try {
        await _repository.insertItem(event.item);
        final result = await _repository.getItem();

        yield state.rebuild((b) => b
          ..isLoading = false
          ..items.addAll(result));
      } catch (e) {
        print(e);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong");
      }
    }
  }
}
