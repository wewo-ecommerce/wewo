# wewo
- wewo app là sàn thương mại điện tử, với giải pháp hoàn toàn khác biệt so với các App trên thị trường
- wewo là dự án cộng đồng, do cộng đồng phát triển, cộng đồng sở hữu và phục vụ cộng đồng

## Ý TƯỞNG
- Hiện trạng: Thị trường hàng hóa Việt Nam có giá thành khá cao, gây khó khăn cho người tiêu dùng. Cuộc sống người dân khá chật vật, thu nhập thì hạn chế, chi tiêu thì chóng vánh. 
- Nguyên nhân: 
    + Ngành logistic chưa phát triển, chi phí rất cao (gấp đôi China)
    + Tính minh bạch thị trường thấp
    + Chất lượng hàng hóa thật giả lẫn lộn
    + Lạm phát thường tăng. v.v...
- Ý tưởng wewoapp được hình thành từ thực tế như vậy, nhằm mục đích đóng góp một phần nhỏ để kéo giá cho Người tiêu dùng

## TIÊU CHÍ HOẠT ĐỘNG TEAM
- Tôn trọng sự khác biệt
- Không bao giờ lừa dối người khác
- Thái độ làm việc quan trọng hơn khả năng
- Chọn người lãnh đạo nghĩ khác.
- Chấp nhận người phù hợp nhất chứ không tìm kiếm người giỏi nhất
- Chúng ta không thông minh
- Xây dựng sản phẩm phù hợp thị trường
- Team làm việc cởi mở, thân thiện, đoàn kết và là Team MỞ (liên tục bổ sung thành viên mới)

## LÀM VIỆC TRONG TEAM
- Dev có kinh nghiệm sẽ hổ trợ/review code cho dev có kinh nghiệm ít,
- Dev có kinh nghiệm thực hiện những công việc khó. Dev kinh nghiệm ít thực hiện công việc dễ
- Tất cả đóng góp đều được ghi nhận thông qua cổ phần sở hữu App

## CẤU TRÚC FILE (lib) khi sử dụng GetX
- main và APP (COMMOM/DATA/MODULES/ROUTES)
- commom: nơi lưu tất cả các: size/constants/widgets/custom/thông số giao diện/... dùng chung trong giao diện trên toàn bộ app
- data: là nơi lưu những gì liên quan dữ liệu, giao tiếp backend: model/repository/api/... dùng cho các controller trên toàn bộ app
- modules: nơi này lưu các màn hình, chức năng với cấu trúc 3 file cho mỗi view (ví dụ: homeview/homecontroller/homebinding)
- routes: gồm 2 file (app_pages/app_routes) là nơi khai báo các page/routes

## BACKEND
- Ngôn ngữ Js
- Framework NodeJs
- CSDL: NoSQL, tool- MongoDB

## FONTEND
- Ngôn ngữ Dart
- Framework Flutter
- UI mẫu tham chiếu (nó không phải là UI chính thức)
UI mẫu dùng để tham chiếu màu săc, widgets, custom, thông số giao diện, kích cỡ text,... Nó không dùng để code các chức năng, UX, nố cục màn hình, các push màn hình,... 
![image](https://user-images.githubusercontent.com/61767886/209053881-e647d69e-d497-4aa4-9319-68b179058d33.png)
- UI phát họa sơ bộ
![image](https://user-images.githubusercontent.com/61767886/209249453-729d4bcb-58de-4db7-b815-257f6d78cc47.png)


