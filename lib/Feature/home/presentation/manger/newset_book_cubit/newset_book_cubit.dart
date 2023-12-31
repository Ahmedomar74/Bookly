import 'package:booklyapp/Feature/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetcNewestBooks() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewsetBookFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
