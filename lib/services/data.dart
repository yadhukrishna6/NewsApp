import 'package:newsapp/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = [];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Bussiness';
  categoryModel.image = "asset/images/business.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Sports';
  categoryModel.image = "asset/images/sports.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'science';
  categoryModel.image = "asset/images/Science.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Health';
  categoryModel.image = "asset/images/health.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'General';
  categoryModel.image = "asset/images/general.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Entertainment';
  categoryModel.image = "asset/images/entertainment.jpg";
  category.add(categoryModel);
  categoryModel = new CategoryModel();
  return category;
}
