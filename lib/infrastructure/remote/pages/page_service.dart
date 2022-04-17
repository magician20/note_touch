// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:note_touch/domain/pages/repository/page_enum.dart';
// import 'package:note_touch/infrastructure/remote/core/constants.dart';
// import 'package:note_touch/infrastructure/remote/notes/dto/page_built_model.dart';
// import 'package:retrofit/retrofit.dart';

// part 'page_service.g.dart';

// @lazySingleton
// @RestApi(baseUrl: AUTH_BASE_URL_External)
// abstract class PageService {
//   @factoryMethod
//   factory PageService(Dio dio) = _PageService;

//   @POST('/page')
//   Future<PageDto> createPage(@Body() CreatePageDto page);

//   @GET('/page/{id}')
//   Future<PageDto> getPageByID(@Path("id") String id);

//   @GET('/page')
//   Future<List<PageDto>> getPages();

//   @PUT('/page/{id}')
//   Future<PageDto> updatePage(@Path() String id,@Body() CreatePageDto page);

//    @PUT('/page/{id}/{status}')
//   Future<PageDto> updatePageStatus(@Path() String id,@Body() TaskStatus status);

//    @PUT('/page/{id}/{state}')
//   Future<PageDto> updatePageState(@Path() String id,@Body() PageStates state);
  
//   @DELETE("/page/{id}")
//   Future<void> deletePage(@Path() String id);


// }
