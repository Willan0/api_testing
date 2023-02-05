import 'package:dio/dio.dart';
import 'package:fake_store/constant/api_constant.dart';
import 'package:retrofit/http.dart';

import '../../response/movie_response/movie_response.dart';
part 'movie_api.g.dart';
@RestApi(baseUrl: kMovieBaseUrl)
abstract class MovieApi{
  factory MovieApi(Dio dio) = _MovieApi;
  @GET(kMoveGetNowPlayingEndPoint)
  Future<MovieResponse> getAllNowPlayingMovie(
      @Query(kApiKey) String? apiKey,
      @Query(kPages) int? page,
  );
}