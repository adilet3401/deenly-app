// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kk_app_ui/kk_app_ui.dart';
// import 'package:kuimakulak_mobile/l10n/l10n.dart';
// import 'package:kuimakulak_mobile/modules/bookmark/bloc/bookmark_bloc.dart';
// import 'package:kuimakulak_mobile/modules/home/home.dart';
// import 'package:kuimakulak_mobile/modules/main/pages/main_page.dart';
// // import 'bookmark_bloc.dart';

// class BookmarkPage extends StatelessWidget {
//   const BookmarkPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(create: (context) => BookmarkBloc()..add(LoadBookmarksEvent()), child: _BookmarkPageContent());
//   }
// }

// class _BookmarkPageContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("KuimaKulak", style: theme.textTheme.titleLarge!.copyWith(color: AppColors.bluetext)),
//         leading: AppBarIconButton(
//           icon: Assets.icons.iconArrows.svg(width: 24, height: 24),
//           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage())),
//         ),
//         actions: [AppBarIconButton(icon: Assets.icons.notification.svg(width: 24, height: 24), onTap: () {})],
//       ),
//       body: BlocBuilder<BookmarkBloc, BookmarkState>(
//         builder: (context, state) {
//           if (state is BookmarkLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is BookmarkEmpty) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Assets.images.attention.image(width: 75, height: 80),
//                   const SizedBox(height: 20),
//                   Text(context.l10n.noSavedBooks, style: theme.textTheme.titleLarge),
//                 ],
//               ),
//             );
//           } else if (state is BookmarkLoaded) {
//             return ListView.builder(
//               padding: const EdgeInsets.all(16.0),
//               itemCount: state.books.length,
//               itemBuilder: (context, index) {
//                 final book = state.books[index];
//                 return Card(
//                   elevation: 0.6,
//                   margin: const EdgeInsets.only(bottom: 16.0),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
//                   child: Stack(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(8),
//                               child: Image.network(
//                                 book.imageUrl,
//                                 width: 115,
//                                 height: 115,
//                                 fit: BoxFit.cover,
//                                 errorBuilder: (_, __, ___) => const Icon(Icons.broken_image, size: 70),
//                               ),
//                             ),
//                             const SizedBox(width: 14),
//                             Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const SizedBox(height: 4),
//                                   Text(book.title, style: theme.textTheme.titleMedium),
//                                   const SizedBox(height: 4),
//                                   Text(book.author, style: theme.textTheme.labelSmall),
//                                   const SizedBox(height: 24),
//                                   Row(
//                                     children: [
//                                       ElevatedButton(
//                                         onPressed: () {},
//                                         style: ElevatedButton.styleFrom(
//                                           minimumSize: const Size(73, 30),
//                                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
//                                           padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
//                                         ),
//                                         child: Text(
//                                           context.l10n.listen,
//                                           style: theme.textTheme.bodySmall?.copyWith(color: AppColors.white),
//                                         ),
//                                       ),
//                                       const Spacer(),
//                                       Assets.icons.star
//                                       // ignore: deprecated_member_use
//                                       .svg(width: 16, color: AppColors.raiting),
//                                       const SizedBox(width: 2),
//                                       Text(
//                                         book.rating.toStringAsFixed(1),
//                                         style: theme.textTheme.labelSmall?.copyWith(color: AppColors.raiting),
//                                       ),
//                                       const SizedBox(width: 8),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Positioned(
//                         top: 4,
//                         right: 4,
//                         child: IconButton(
//                           icon: Assets.icons.iconActionClose
//                           // ignore: deprecated_member_use
//                           .svg(width: 18, color: AppColors.black),
//                           onPressed: () {
//                             context.read<BookmarkBloc>().add(RemoveBookmarkEvent(book));
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             );
//           }
//           return const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }






// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kk_app_ui/kk_app_ui.dart';
// // import 'package:kuimakulak_mobile/modules/home/widgets/history_page.dart';

// part 'bookmark_event.dart';
// part 'bookmark_state.dart';

// class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
//   BookmarkBloc() : super(BookmarkInitial()) {
//     on<LoadBookmarksEvent>(_onLoadBookmarks);
//     on<RemoveBookmarkEvent>(_onRemoveBookmark);
//   }

//   Future<void> _onLoadBookmarks(LoadBookmarksEvent event, Emitter<BookmarkState> emit) async {
//     emit(BookmarkLoading());
//     // Имитация задержки загрузки (если данные загружаются асинхронно, например, из базы данных)
//     await Future.delayed(const Duration(milliseconds: 500));
//     final books = BookData.favoriteBooks;
//     if (books.isEmpty) {
//       emit(BookmarkEmpty());
//     } else {
//       emit(BookmarkLoaded(books));
//     }
//   }

//   Future<void> _onRemoveBookmark(RemoveBookmarkEvent event, Emitter<BookmarkState> emit) async {
//     // Удаляем книгу из списка
//     BookData.favoriteBooks.remove(event.book);
//     // Обновляем состояние
//     if (BookData.favoriteBooks.isEmpty) {
//       emit(BookmarkEmpty());
//     } else {
//       emit(BookmarkLoaded(BookData.favoriteBooks));
//     }
//   }
// }


// part of 'bookmark_bloc.dart';

// abstract class BookmarkEvent extends Equatable {
//   const BookmarkEvent();

//   @override
//   List<Object> get props => [];
// }

// class LoadBookmarksEvent extends BookmarkEvent {}

// class RemoveBookmarkEvent extends BookmarkEvent {
//   final Book2 book;

//   const RemoveBookmarkEvent(this.book);

//   @override
//   List<Object> get props => [book];
// }


// part of 'bookmark_bloc.dart';

// abstract class BookmarkState extends Equatable {
//   const BookmarkState();

//   @override
//   List<Object> get props => [];
// }

// class BookmarkInitial extends BookmarkState {}

// class BookmarkLoading extends BookmarkState {}

// class BookmarkLoaded extends BookmarkState {
//   final List<Book2> books;

//   const BookmarkLoaded(this.books);

//   @override
//   List<Object> get props => [books];
// }

// class BookmarkEmpty extends BookmarkState {}