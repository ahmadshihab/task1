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
      final result = await _repository.getItem();

      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..items.replace(result)
          ..menus = null);

        final data = await _repository.getMenus();
        //print('GetMenus Success data ${data}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..items.replace(result)
          ..menus.replace(data));
      } catch (e) {
        print('GetMenus Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..menus = null);
      }
    }

    if (event is AddItem) {
      yield state.rebuild((b) => b..items.clear());

      try {
        await _repository.insertItem(event.item);
        final result = await _repository.getItem();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..items.replace([result]));
      } catch (e) {
        print(e);
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong");
      }
    }
  }
}
