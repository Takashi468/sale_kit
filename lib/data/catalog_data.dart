/// Formulation types shown when browsing "อาหารเสริม" / "เครื่องสำอาง" by product type.
class FormulationItem {
  const FormulationItem({
    required this.name,
    required this.subtitle,
    this.imagePath,
    this.description,
  });

  final String name;
  final String subtitle;
  final String? imagePath;
  final String? description;
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
    FormulationItem(
      name: 'Drink',
      subtitle: 'ผงชงดื่ม',
      imagePath: 'assets/images/supp_drink.png',
      description:
          'ผงชงละลายน้ำ พกพาง่าย ปรับรสชาติและความเข้มข้นได้หลากหลาย '
          'เหมาะกับสูตรวิตามิน คอลลาเจน หรือดีท็อกซ์ที่ต้องการรสชาติถูกปาก',
    ),
    FormulationItem(
      name: 'Softgel',
      subtitle: 'เม็ดอาหารเสริมที่มีน้ำมันบรรจุภาในแคปซูล',
      imagePath: 'assets/images/supp_softgel.png',
      description:
          'แคปซูลนิ่มหุ้มสารสกัดที่ละลายในน้ำมัน เช่น น้ำมันปลา น้ำมันเมล็ดองุ่น '
          'ดูดซึมได้ดี ควบคุมปริมาณต่อเม็ดแม่นยำ ไม่มีกลิ่นรบกวนขณะทาน',
    ),
    FormulationItem(
      name: 'Coffee',
      subtitle: 'เครื่องดื่มพร้อมชง',
      imagePath: 'assets/images/supp_coffee.png',
      description:
          'กาแฟพร้อมชงผสมสารสกัดเสริมสุขภาพ ได้ทั้งรสชาติที่คุ้นเคยและประโยชน์เสริม '
          'เจาะกลุ่มลูกค้าที่ดื่มกาแฟเป็นประจำอยู่แล้ว',
    ),
    FormulationItem(
      name: 'Effervescent/Chewable',
      subtitle: 'เม็ดละลายน้ำและเม็ดเคี้ยว',
      imagePath: 'assets/images/supp_effervescent.png',
      description:
          'เม็ดฟู่ละลายน้ำเกิดฟองก๊าซคาร์บอนไดออกไซด์ช่วยดูดซึมได้ดี '
          'นิยมใช้กับวิตามินซี หรือเม็ดเคี้ยวรสชาติดี ทานง่ายไม่ต้องกลืนทั้งเม็ด',
    ),
    FormulationItem(
      name: 'Shot',
      subtitle: 'ผงกรอกปาก',
      imagePath: 'assets/images/supp_shot.png',
      description:
          'ของเหลวหรือผงเข้มข้นบรรจุซองขนาดเล็ก ฉีกกรอกปากทานได้ทันทีไม่ต้องใช้น้ำ '
          'เหมาะกับสูตรที่ต้องการความเข้มข้นสูงในปริมาณน้อยและพกพาสะดวก',
    ),
    FormulationItem(
      name: 'Tablet',
      subtitle: 'ตอกเม็ด ละลายน้ำ',
      imagePath: 'assets/images/supp_tablet.png',
      description:
          'เม็ดตอกจากผงผสมวัตถุดิบ ควบคุมต้นทุนต่อหน่วยได้ดีและผลิตได้ปริมาณมาก '
          'เหมาะกับสูตรวิตามินรวมและแร่ธาตุที่ต้องการความคงตัวสูง',
    ),
    FormulationItem(
      name: 'Oil',
      subtitle: 'น้ำมัน',
      imagePath: 'assets/images/supp_oil.png',
      description:
          'น้ำมันสกัดบรรจุขวดสำหรับรับประทานโดยตรงหรือหยดผสมอาหาร '
          'เหมาะกับสูตรที่เน้นกรดไขมันจำเป็นอย่าง Omega-3 หรือ MCT',
    ),
    FormulationItem(
      name: 'Pellet',
      subtitle: 'เม็ดกลมหรือแท่งขนาดเล็ก',
      imagePath: 'assets/images/supp_pellet.png',
      description:
          'เม็ดกลมหรือแท่งขนาดเล็กทานง่าย ควบคุมปริมาณต่อโดสได้ละเอียด '
          'เหมาะกับผลิตภัณฑ์เสริมอาหารสัตว์เลี้ยงหรือโดสขนาดจิ๋ว',
    ),
    FormulationItem(
      name: 'Protein',
      subtitle: 'โปรตีนจากพืชและสัตว์',
      imagePath: 'assets/images/supp_protein.png',
      description:
          'ผงโปรตีนจากพืชหรือสัตว์ ชงดื่มก่อน-หลังออกกำลังกาย '
          'ปรับรสชาติและสัดส่วนโปรตีนได้ตามกลุ่มเป้าหมายสายฟิตเนส',
    ),
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
      imagePath: 'assets/images/cos_cleaner.png',
      description:
          'ผลิตภัณฑ์ทำความสะอาดผิวหน้าและผิวกายที่ใช้เป็นประจำทุกวัน '
          'เช่น โฟมล้างหน้า เจลอาบน้ำ สบู่ก้อน เป็นสินค้าเข้าถึงลูกค้าได้ง่ายและซื้อซ้ำสูง',
    ),
    FormulationItem(
      name: 'Cream/Serum/Lotion',
      subtitle: 'ครีม เซรั่ม โลชั่น',
      imagePath: 'assets/images/cos_cream_serum.png',
      description:
          'เนื้อครีม เซรั่ม หรือโลชั่นบำรุงผิวเข้มข้นด้วยสารสกัดตามสูตรที่ต้องการ '
          'ปรับเนื้อสัมผัสได้หลากหลายตั้งแต่บางเบาไปจนถึงเข้มข้น',
    ),
    FormulationItem(
      name: 'Facial Care',
      subtitle: 'บำรุงผิวหน้าอย่างบางเบา',
      imagePath: 'assets/images/cos_facial.png',
      description:
          'ผลิตภัณฑ์บำรุงผิวหน้าเนื้อบางเบาซึมซาบไว เช่น เอสเซนส์ โทนเนอร์ มาส์ก '
          'เหมาะกับสูตรที่เน้นบำรุงเฉพาะจุดหรือใช้ต่อจากคลีนเซอร์',
    ),
    FormulationItem(
      name: 'Scrub',
      subtitle: 'ผลัดเซลล์ผิว',
      imagePath: 'assets/images/cos_scrub.png',
      description:
          'ผลิตภัณฑ์ขัดผิวช่วยผลัดเซลล์ผิวที่ตายแล้ว เลือกเกรนความหยาบของเนื้อสครับได้ตามการใช้งาน '
          'เหมาะเป็นสินค้าเสริมในไลน์ดูแลผิวกาย',
    ),
    FormulationItem(
      name: 'Sunscreen toneup',
      subtitle: 'ปกป้องผิวจากแสงแดด',
      imagePath: 'assets/images/cos_sunscreen.png',
      description:
          'ครีมกันแดดที่ปรับสีผิวให้ดูกระจ่างใสขึ้นทันทีพร้อมปกป้องแสงแดด '
          'เป็นเทรนด์ที่ตลาดเติบโตแรงเพราะทดแทนได้ทั้งบำรุงผิว กันแดด และไพรเมอร์แต่งหน้าในขั้นตอนเดียว',
    ),
    FormulationItem(
      name: 'Hair Care',
      subtitle: 'แชมพูและครีมนวด',
      imagePath: 'assets/images/cos_haircare.png',
      description:
          'แชมพู ครีมนวด และผลิตภัณฑ์ดูแลเส้นผม '
          'ปรับสูตรเฉพาะปัญหาผมได้ เช่น ผมร่วง รังแค ผมแห้งเสีย',
    ),
    FormulationItem(
      name: 'Deodorant',
      subtitle: 'ดูแลบำรุงผิวใต้วงแขน',
      imagePath: 'assets/images/cos_deodorant.png',
      description:
          'ผลิตภัณฑ์ระงับกลิ่นกายรูปแบบแท่ง โรลออน หรือสเปรย์ '
          'ใช้งานสะดวกพกพาง่าย เป็นสินค้าที่ลูกค้าใช้ต่อเนื่องทุกวัน',
    ),
    FormulationItem(
      name: 'Hand/Nail',
      subtitle: 'บำรุงเล็บและผิวมือ',
      imagePath: 'assets/images/cos_handnail.png',
      description:
          'ครีมบำรุงมือและเล็บเนื้อเบาซึมไว ไม่เหนอะหนะ '
          'เหมาะเป็นสินค้าเสริมในไลน์ผลิตภัณฑ์ความงามหรือของแถมโปรโมชั่น',
    ),
    FormulationItem(
      name: 'Lip/Mouth',
      subtitle: 'บำรุงริมฝีปาก',
      imagePath: 'assets/images/cos_lipmouth.png',
      description:
          'ลิปบาล์ม ลิปสติก หรือลิปกลอสบำรุงริมฝีปาก '
          'มีให้เลือกทั้งสูตรบำรุงไร้สีและสูตรมีสีติดทนสำหรับแบรนด์ที่อยากทำไลน์เมคอัพ',
    ),
    FormulationItem(
      name: 'Fragrance',
      subtitle: 'เพิ่มอรรถรสด้วยกลิ่น',
      imagePath: 'assets/images/cos_fragrance.png',
      description:
          'น้ำหอมและผลิตภัณฑ์ให้กลิ่นติดทนนาน '
          'ปรับสัดส่วนหัวน้ำหอมและความเข้มข้นได้ตามคาแรกเตอร์ของแบรนด์',
    ),
    FormulationItem(
      name: 'Cosmetic',
      subtitle: 'ผลิตภัณฑ์ความงาม',
      imagePath: 'assets/images/cos_cosmetic.png',
      description:
          'เครื่องสำอางแต่งหน้า เช่น อายแชโดว์ บลัชออน ลิปกลอส รองพื้น '
          'เหมาะกับแบรนด์ที่ต้องการขยายไลน์สู่กลุ่มเมคอัพ',
    ),
    FormulationItem(
      name: 'Gentle&Feminine',
      subtitle: 'บำรุงผิว',
      imagePath: 'assets/images/cos_feminine.png',
      description:
          'ผลิตภัณฑ์ดูแลผิวบอบบางและจุดซ่อนเร้นสำหรับผู้หญิง '
          'สูตรอ่อนโยน pH สมดุล ไม่ก่อให้เกิดการระคายเคือง',
    ),
    FormulationItem(
      name: 'Men/Exercise',
      subtitle: 'ผลิตภัณฑ์ความงาม',
      imagePath: 'assets/images/cos_men.png',
      description:
          'ผลิตภัณฑ์ดูแลผิวสำหรับผู้ชายและสายออกกำลังกาย เช่น เจลอาบน้ำ โรลออน '
          'ดีไซน์แพ็กเกจจิ้งที่เน้นความแข็งแรงทนทาน',
    ),
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
          imagePath: 'assets/images/airless_pump.png',
        ),
        PackagingPhoto(
          name: 'Spray bottle',
          subtitle: 'ขวดหัวสเปรย์',
          imagePath: 'assets/images/spray_bottle.png',
        ),
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
        PackagingPhoto(
          name: 'Aroma bottle',
          subtitle: 'ขวดอโรม่า',
          imagePath: 'assets/images/aroma_bottle.png',
        ),
        PackagingPhoto(
          name: 'Diffuser',
          subtitle: 'ขวดแก้วเครื่องหอม',
          imagePath: 'assets/images/diffuser.png',
        ),
        PackagingPhoto(
          name: 'Perfume bottle',
          subtitle: 'ขวดแก้วน้ำหอม',
          imagePath: 'assets/images/perfume_bottle.png',
        ),
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
        PackagingPhoto(
          name: 'Sachet',
          subtitle: 'ขนาด 5-20 กรัม',
          imagePath: 'assets/images/Sachet.png',
        ),
        PackagingPhoto(
          name: 'ซองเชค',
          subtitle: 'ขนาด 20-50 กรัม',
          imagePath: 'assets/images/Sachet2.png',
        ),
        PackagingPhoto(
          name: 'ซองถุง',
          subtitle: 'ขนาด 100-300 กรัม',
          imagePath: 'assets/images/Sachet3.png',
        ),
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
          imagePath: 'assets/images/box1.png',
        ),
        PackagingPhoto(
          name: 'กล่องฝาเสียบหัวท้าย',
          subtitle:
              'กล่องกระดาษทรงสี่เหลี่ยมมีสันเสียบเปิด-ปิดทั้งด้านบนและด้านล่าง',
          imagePath: 'assets/images/Box3.png',
        ),
        PackagingPhoto(
          name: 'กล่องทรงสูงฝาเสียบ',
          subtitle: 'กล่องสี่เหลี่ยม มีฝาเปิดด้านบน',
          imagePath: 'assets/images/Box2.png',
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
        PackagingPhoto(
          name: 'กระปุกยา',
          subtitle: 'ใส่แคปซูล, เม็ด, Soft Gel',
          imagePath: 'assets/images/supplement_bottle1.png',
        ),
        PackagingPhoto(
          name: 'กระปุก, ถัง',
          subtitle: '',
          imagePath: 'assets/images/supplement_bottle2.png',
        ),
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
