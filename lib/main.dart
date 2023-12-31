import 'package:booklyapp/Feature/home/data/repos/home_repo_impl.dart';
import 'package:booklyapp/Feature/home/presentation/manger/Featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Feature/home/presentation/manger/newset_book_cubit/newset_book_cubit.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/uitls/app_routes.dart';
import 'package:booklyapp/core/uitls/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBookCubit(getIt.get<HomeRepoImpl>())..fetcNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          )),
    );
  }
}
