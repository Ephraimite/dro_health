import 'package:min_id/min_id.dart';

class ProductModel {
  String? description;
  String? productID;
  String? constituent;
  String? soldBy;
  String? packSized;
  double? price;
  String? productName;
  String? imageUrl;
  int cartItemQuantity;

  ProductModel(
      {this.description,
      this.productID,
      this.constituent,
      this.soldBy,
      this.packSized,
      this.price,
      this.productName,
      this.imageUrl,
      this.cartItemQuantity = 0});

 static List<ProductModel> listOfProducts = [
    ProductModel(
        productName: 'P-Alaxin X12',
        description: 'P Alaxin Is An Antimalarial Used In The Treatment Of Malaria Parasite',
        constituent: 'Dihydroartemisinin',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411532/1405951339622f69be6ceedproduct_hrtnjw.webp',
        packSized: '12 packs',
        price: 750.00,
        productID: MinId.getId(),
        soldBy: 'Bliss Gvs Pharma Limited'),
    ProductModel(
        productName: 'Sivo Fluconazole 150mg',
        description: 'Fluconazole Is An Antifungal Medicine That Is Used To Treat Fungal Infections, Which Can Invade Any Part Of Th..',
        constituent: 'Fluconazole',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411532/2917947626218aec9a2aa8product_zxucvx.webp',
        packSized: '10 tablets ',
        price: 600.00,
        productID: MinId.getId(),
        soldBy: 'Sivo'),
    ProductModel(
        productName: 'Vigor Chocolate',
        description: 'It Is Used As A Sexual Stimulant For Men With Low Libido. It Works The First Time You Use It. It Increases You...',
        constituent: 'ginger, soy lecithin',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411532/14794505825e45600c2db7dproduct_zcoimy.png',
        packSized: '1 bar',
        price: 1900.00,
        productID: MinId.getId(),
        soldBy: 'Vigor'),
    ProductModel(
        productName: 'Principle Immune Boost',
        description: 'Principle Immune Boost + Is A Convenient Way To Increase Your Immunity. Containing High Levels Of Vitamin C An...',
        constituent: 'Vitamin C',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411533/vO0IqmrQyuFFjPeY8PXtPMG5MnhLi8jVY7lMIwMN_nb6vsu.png',
        packSized: '20 tablets',
        price: 2000.00,
        productID: MinId.getId(),
        soldBy: 'Principle health care'),
    ProductModel(
        productName: 'Skineal cream',
        description: 'Skineal Is A Triple Action Cream With Anti-fungal, Ant-bacterial And Anti-pruritic Effects For Treatment Of Va...',
        constituent: 'Ketoconazole',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411532/5CfgsZGLSOc535Ph7FUZclGHH2IFm0Rb6inU845g_whvvot.jpg',
        packSized: '1 pack',
        price: 900.00,
        productID: MinId.getId(),
        soldBy: 'Skineal'),
    ProductModel(
        productName: 'Jawaron capsules',
        description: 'Jawaron Capsules Is Used For The Treatment Of Iron Deficiency Anaemia. It Is A Complete Haematinic For Rapid I...',
        constituent: 'Iron',
        imageUrl: 'https://res.cloudinary.com/dx12zaip6/image/upload/v1647411532/nTy4j7ONUG2tS3vzCYPROTVM1eazJFREu0UUSn4W_wh3fcb.jpg',
        packSized: '15 tablets',
        price: 300.00,
        productID: MinId.getId(),
        soldBy: 'Jawaron internation ltd'),
  ];
}


