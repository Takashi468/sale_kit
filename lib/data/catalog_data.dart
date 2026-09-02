/// Formulation types shown when browsing "อาหารเสริม" / "เครื่องสำอาง" by product type.
class FormulationItem {
  const FormulationItem({required this.name, required this.subtitle});

  final String name;
  final String subtitle;
}

class FormulationCategory {
  const FormulationCategory({
    required this.key,
    required this.title,
    required this.subtitle,
    required this.items,
  });

  final String key;
  final String title;
  final String subtitle;
  final List<FormulationItem> items;
}

const supplementFormulation = FormulationCategory(
  key: 'supplement',
  title: 'อาหารเสริม',
  subtitle: 'Drink, Softgel, Tablet ฯลฯ',
  items: [
    FormulationItem(name: 'Drink', subtitle: 'ผงชงดื่ม'),
    FormulationItem(
      name: 'Softgel',
      subtitle: 'เม็ดอาหารเสริมที่มีน้ำมันบรรจุภาในแคปซูล',
    ),
    FormulationItem(name: 'Coffee', subtitle: 'เครื่องดื่มพร้อมชง'),
    FormulationItem(
      name: 'Effervescent/Chewable',
      subtitle: 'เม็ดละลายน้ำและเม็ดเคี้ยว',
    ),
    FormulationItem(name: 'Shot', subtitle: 'ผงกรอกปาก'),
    FormulationItem(name: 'Tablet', subtitle: 'ตอกเม็ด ละลายน้ำ'),
    FormulationItem(name: 'Oil', subtitle: 'น้ำมัน'),
    FormulationItem(name: 'Pellet', subtitle: 'เม็ดกลมหรือแท่งขนาดเล็ก'),
    FormulationItem(name: 'Protein', subtitle: 'โปรตีนจากพืชและสัตว์'),
  ],
);

const cosmeticFormulation = FormulationCategory(
  key: 'cosmetic',
  title: 'เครื่องสำอาง',
  subtitle: 'Cream, Serum, Scrub ฯลฯ',
  items: [
    FormulationItem(
      name: 'Cleaner/Shower/Soap',
      subtitle: 'ผลิตภัณฑ์ทำความสะอาดผิวหน้า',
    ),
    FormulationItem(name: 'Cream/Serum/Lotion', subtitle: 'ครีม เซรั่ม โลชั่น'),
    FormulationItem(name: 'Facial Care', subtitle: 'บำรุงผิวหน้าอย่างบางเบา'),
    FormulationItem(name: 'Scrub', subtitle: 'ผลัดเซลล์ผิว'),
    FormulationItem(name: 'Sunscreen toneup', subtitle: 'ปกป้องผิวจากแสงแดด'),
    FormulationItem(name: 'Hair Care', subtitle: 'แชมพูและครีมนวด'),
    FormulationItem(name: 'Deodorant', subtitle: 'ดูแลบำรุงผิวใต้วงแขน'),
    FormulationItem(name: 'Hand/Nail', subtitle: 'บำรุงเล็บและผิวมือ'),
    FormulationItem(name: 'Lip/Mouth', subtitle: 'บำรุงริมฝีปาก'),
    FormulationItem(name: 'Fragrance', subtitle: 'เพิ่มอรรถรสด้วยกลิ่น'),
    FormulationItem(name: 'Cosmetic', subtitle: 'ผลิตภัณฑ์ความงาม'),
    FormulationItem(name: 'Gentle&Feminine', subtitle: 'บำรุงผิว'),
    FormulationItem(name: 'Men/Exercise', subtitle: 'ผลิตภัณฑ์ความงาม'),
  ],
);

const formulationCategories = [supplementFormulation, cosmeticFormulation];

/// A single photographed item shown inside a packaging-type list page.
class PackagingPhoto {
  const PackagingPhoto({
    required this.name,
    required this.subtitle,
    this.imagePath,
  });

  final String name;
  final String subtitle;
  final String? imagePath;
}

/// One packaging type (e.g. "Bowl", "Sachet") — taps into a list of photos.
class PackagingType {
  const PackagingType({
    required this.title,
    required this.subtitle,
    required this.photos,
    this.coverImagePath,
  });

  final String title;
  final String subtitle;
  final List<PackagingPhoto> photos;

  /// Cover image shown on the catalog grid card. Falls back to the first
  /// photo's image if not set.
  final String? coverImagePath;
}

/// A packaging catalog grid (e.g. "บรรจุภัณฑ์เครื่องสำอาง") containing several types.
class PackagingCatalog {
  const PackagingCatalog({required this.title, required this.types, this.coverImagePath});

  final String title;
  final List<PackagingType> types;
  final String? coverImagePath;
}

const cosmeticPackagingCatalog = PackagingCatalog(
  title: 'บรรจุภัณฑ์เครื่องสำอาง',
  types: [
    PackagingType(
      title: 'Bowl',
      subtitle: 'กระปุกครีม',
      coverImagePath: 'assets/images/bowl.jpg',
      photos: [
        PackagingPhoto(
          name: 'Bowl',
          subtitle: 'กระปุกครีม',
          imagePath: 'assets/images/bowl-1.jpg',
        ),
        PackagingPhoto(
          name: 'Bowl',
          subtitle: 'กระปุกครีม',
          imagePath: 'assets/images/bowl-2.jpg',
        ),
        PackagingPhoto(
          name: 'Bowl',
          subtitle: 'กระปุกครีม',
          imagePath: 'assets/images/bowl-3.jpg',
        ),
      ],
    ),
    PackagingType(
      title: 'Airless pump bottle',
      subtitle: 'Airless bottle',
      coverImagePath: 'assets/images/airless-pump.jpg',
      photos: [
        PackagingPhoto(
          name: 'Airless pump bottle หรือ Airless bottle',
          subtitle: 'ขวดปั๊ม - ขวดสูญญากาศ',
        ),
        PackagingPhoto(name: 'Spray bottle', subtitle: 'ขวดหัวสเปรย์'),
      ],
    ),
    PackagingType(
      title: 'Foam tub',
      subtitle: 'หลอดโฟม',
      coverImagePath: 'assets/images/foam-tub.png',
      photos: [
        PackagingPhoto(
          name: 'Standard',
          subtitle: 'หลอดทั่วไป',
          imagePath: 'assets/images/plastic-face-tube.jpg',
        ),
        PackagingPhoto(
          name: 'Aluminium',
          subtitle: 'แบบชุบหลอดอลูมิเนียม',
          imagePath: 'assets/images/aluminium-face-tube.jpg',
        ),
      ],
    ),
    PackagingType(
      title: 'glass bottle',
      subtitle: 'ขวดแก้ว',
      coverImagePath: 'assets/images/glass-bottle.jpg',
      photos: [
        PackagingPhoto(name: 'Aroma bottle', subtitle: 'ขวดอโรม่า'),
        PackagingPhoto(name: 'Diffuser', subtitle: 'ขวดแก้วเครื่องหอม'),
        PackagingPhoto(name: 'Perfume bottle', subtitle: 'ขวดแก้วน้ำหอม'),
      ],
    ),
  ],
);

const supplementPackagingCatalog = PackagingCatalog(
  title: 'บรรจุภัณฑ์อาหารเสริม',
  types: [
    PackagingType(
      title: 'Sachet',
      subtitle: 'ถุง / ซอง',
      coverImagePath: 'assets/images/main_sachet.png',
      photos: [
        PackagingPhoto(name: 'Sachet', subtitle: 'ขนาด 5-20 กรัม'),
        PackagingPhoto(name: 'ซองเชค', subtitle: 'ขนาด 20-50 กรัม'),
        PackagingPhoto(name: 'ซองถุง', subtitle: 'ขนาด 100-300 กรัม'),
      ],
    ),
    PackagingType(
      title: 'Box',
      subtitle: 'กล่อง',
      coverImagePath: 'assets/images/main_box.png',
      photos: [
        PackagingPhoto(
          name: 'กระป๋องกระดาษ',
          subtitle: 'ทรงกระบอกกลม มีฝาสวมเปิด-ปิดด้านบน',
        ),
        PackagingPhoto(
          name: 'กล่องฝาเสียบหัวท้าย',
          subtitle:
              'กล่องกระดาษทรงสี่เหลี่ยมมีสันเสียบเปิด-ปิดทั้งด้านบนและด้านล่าง',
        ),
        PackagingPhoto(
          name: 'กล่องทรงสูงฝาเสียบ',
          subtitle: 'กล่องสี่เหลี่ยม มีฝาเปิดด้านบน',
        ),
        PackagingPhoto(
          name: 'กล่องฝาครอบ',
          subtitle: 'กล่องกระดาษแข็งแบบแข็งแรง (กล่องฝาปิด)',
        ),
        PackagingPhoto(
          name: 'กล่องปลอกสวม-ถาดไส้สไลด์',
          subtitle: 'ปลอกสวมด้านนอก และถาดใส่สินค้าด้านใน',
        ),
      ],
    ),
    PackagingType(
      title: 'supplement bottle',
      subtitle: 'กระปุกอาหารเสริม',
      coverImagePath: 'assets/images/supplement_bottle.jpg',
      photos: [
        PackagingPhoto(name: 'กระปุกยา', subtitle: 'ใส่แคปซูล, เม็ด, Soft Gel'),
        PackagingPhoto(name: 'กระปุก, ถัง', subtitle: ''),
      ],
    ),
  ],
);

const packagingCatalogs = [
  cosmeticPackagingCatalog,
  supplementPackagingCatalog,
];

/// Award-winning extract ingredients (tab 3 / home "120 สารสกัด").
class ExtractIngredient {
  const ExtractIngredient({
    required this.name,
    required this.description,
    this.imagePath,
  });

  final String name;
  final String description;
  final String? imagePath;
}

const extractIngredients = [
  ExtractIngredient(
    name: 'WASTAR™ Pink Berry',
    description: 'ผลิตภัณฑ์ควบคุมดัชนีน้ำตาล/ลดผลกระทบจากคาร์โบไฮเดรต',
    imagePath: 'assets/images/wastar_pink_berry.jpg',
  ),
  ExtractIngredient(
    name: 'Althostem™',
    description: 'เพิ่มความชุ่มชื้น ลดการหย่อนคล้อย ลดเลือนริ้วรอย',
    imagePath: 'assets/images/altheostem_header_web.png',
  ),
  ExtractIngredient(
    name: 'ColFrag remastered™',
    description: 'กระชับผิวได้ใน 7 วัน — เข้ากับเซรั่ม/ครีมกระชับผิว',
    imagePath: 'assets/images/col-frag_01.png',
  ),
  ExtractIngredient(
    name: 'NovoRetin™',
    description:
        'เพิ่มปริมาณ Retinoic Acid ในผิว ช่วยผิวกระจ่างใส ลดรอยหมองคล้ำ',
    imagePath: 'assets/images/novoratin.jpg',
  ),
  ExtractIngredient(
    name: 'CALMandrin™',
    description: 'ปลอบประโลมผิวระคายเคือง เสริมความหนาแน่นผิว',
    imagePath: 'assets/images/calmandrin.jpeg',
  ),
  ExtractIngredient(
    name: 'Joybliss™',
    description: 'สกัดจากเกรปฟรุ้ต + Black cohosh ช่วยระบบประสาท',
    imagePath: 'assets/images/joybliss_01.png',
  ),
];
