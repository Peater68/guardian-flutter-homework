import 'package:get_it/get_it.dart';
import 'package:guardian/data/disk/dao/amoor_article_dao.dart';
import 'package:guardian/data/disk/dao/article_dao.dart';
import 'package:guardian/data/disk/disk_data_source.dart';
import 'package:guardian/data/disk/guardian_database.dart';
import 'package:guardian/data/network/guardian_api.dart';
import 'package:guardian/data/network/guardian_service.dart';
import 'package:guardian/data/network/network_data_source.dart';
import 'package:guardian/domain/article_interactor.dart';
import 'package:guardian/ui/arictlelist/article_list_bloc.dart';
import 'package:guardian/ui/articledetails/article_details_bloc.dart';

final injector = GetIt.instance;

void initDependencies() {
  injector.registerSingleton<GuardianApi>(GuardianService());

  injector.registerSingleton(NetworkDataSource(injector<GuardianApi>()));

  injector.registerSingleton(GuardianDatabase());

  injector.registerSingleton<ArticleDao>(
      MoorArticleDao(injector<GuardianDatabase>()));

  injector.registerSingleton(DiskDataSource(injector<ArticleDao>()));

  injector.registerSingleton(ArticleInteractor(
    injector<DiskDataSource>(),
    injector<NetworkDataSource>(),
  ));

  injector
      .registerFactory(() => ArticleListBloc(injector<ArticleInteractor>()));

  injector.registerFactory(() => ArticleDetailsBloc(injector<ArticleInteractor>()));
}
