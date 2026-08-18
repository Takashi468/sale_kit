class PackagingItem {
  const PackagingItem({
    required this.name,
    required this.subtitle,
    required this.description,
  });

  final String name;
  final String subtitle;
  final String description;
}

class ProductCategory {
  const ProductCategory({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.items,
  });

  final String title;
  final String subtitle;
  final String icon; // material icon name key, resolved in UI layer
  final List<PackagingItem> items;
}

const supplementCategory = ProductCategory(
  title: 'อาหารเสริม',
  subtitle: 'Drink, Softgel, Tablet ฯลฯ',
  icon: 'supplement',
  items: [
    PackagingItem(
      name: 'ขวดอาหารเสริม',
      subtitle: 'Supplement Bottle',
      description: 'บรรจุภัณฑ์ขวดสำหรับผลิตภัณฑ์อาหารเสริมชนิดเม็ดและแคปซูล',
    ),
    PackagingItem(
      name: 'ขวดแก้ว',
      subtitle: 'Glass Bottle',
      description: 'ขวดแก้วคุณภาพสูง เหมาะสำหรับผลิตภัณฑ์รูปแบบน้ำดื่ม',
    ),
    PackagingItem(
      name: 'ขวดปั๊ม',
      subtitle: 'Pump Bottle',
      description: 'ขวดปั๊มสำหรับผลิตภัณฑ์อาหารเสริมชนิดน้ำหรือเจล',
    ),
    PackagingItem(
      name: 'ซอง Sachet',
      subtitle: 'Sachet Pack',
      description: 'ซองบรรจุแบบพกพา เหมาะสำหรับผลิตภัณฑ์ชนิดผงหรือน้ำ',
    ),
    PackagingItem(
      name: 'กล่อง',
      subtitle: 'Box Packaging',
      description: 'กล่องบรรจุภัณฑ์ภายนอก ออกแบบได้ตามแบรนด์',
    ),
  ],
);

const cosmeticCategory = ProductCategory(
  title: 'เครื่องสำอาง',
  subtitle: 'Cream, Serum, Scrub ฯลฯ',
  icon: 'cosmetic',
  items: [
    PackagingItem(
      name: 'กระปุกเครื่องสำอาง',
      subtitle: 'Cosmetic Jar',
      description: 'กระปุกบรรจุครีมหรือผลิตภัณฑ์บำรุงผิวเนื้อครีม',
    ),
    PackagingItem(
      name: 'ขวดปั๊ม',
      subtitle: 'Pump Bottle',
      description: 'ขวดปั๊มสำหรับเซรั่มหรือผลิตภัณฑ์เนื้อเหลว',
    ),
    PackagingItem(
      name: 'หลอด',
      subtitle: 'Tube',
      description: 'หลอดบรรจุครีมหรือสครับ ใช้งานง่าย พกพาสะดวก',
    ),
    PackagingItem(
      name: 'ซอง Sachet',
      subtitle: 'Sachet Pack',
      description: 'ซองตัวอย่างหรือบรรจุภัณฑ์แบบใช้ครั้งเดียว',
    ),
    PackagingItem(
      name: 'กล่อง',
      subtitle: 'Box Packaging',
      description: 'กล่องบรรจุภัณฑ์ภายนอก ออกแบบได้ตามแบรนด์',
    ),
  ],
);

const productCategories = [supplementCategory, cosmeticCategory];
