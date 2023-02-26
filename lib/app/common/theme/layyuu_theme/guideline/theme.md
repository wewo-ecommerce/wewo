# Hướng dẫn sử dụng theme
### Author: Sucanabo

Cài đặt theo Design LafyuuTheme
[Design LafyuuTheme](https://www.figma.com/file/xyFSImYZ9qLokdvfi0iFL9/Lafyuu-E-commerce-UI-Kit-for-Figma-(Community)-(Copy)?node-id=0%3A1&t=pjr2al5B7GeW2slb-0)

* Hiện tại chỉ cài đặt theme chung, chưa có các Widget chung, mình sẽ update sau.

* Nếu còn lỗi hay theme Widget nào chưa đúng thì tạo Issue và Assign mình vào

#### Do minh đã theme chung cho các Widget nên các bạn hạn chế Custom mà hay sẽ các Widget mặc định của Flutter nha!

### Cách lấy Style cho bạn nào chưa biết

```
textTheme: context.textTheme.[textStyle]
primaryColor: context.theme.[primaryColor]
colorScheme: context.theme.colorScheme.[color]
```
#### Figma text style to Flutter textStyle

Do cái Design Figma này còn theo chuẩn M2 và khá sơ sài và các property textStyle của Flutter 3 không khuyến khích sử dụng style cũ nữa
<br>
Ví dụ: H6 -> H1
<br>
Giờ sẽ chuyển thành Headline Large -> LabelSmall
<br>

#### TextStyle (Typoraphy)

| Figma     | Flutter        |
|:----------|:---------------|
| Heading1  | displayLarge   |
| Heading2  | displayMedium  |
| Heading3  | displaySmall   |
| Heading4  | displayLarge   |
| Heading5  | displayMedium  |
| Heading6  | displaySmall   |

Xem thêm định nghĩa các style tại: `app/common/theme/type.dart`






