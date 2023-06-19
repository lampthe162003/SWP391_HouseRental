<%-- 
    Document   : house_detail
    Created on : Jun 15, 2023, 4:41:43 PM
    Author     : win
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="webpage">
                <main id="main">
                    <script
                    type="application/ld+json"> { "@type":"Hostel", "@context":"http://schema.org", "name": "PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH", "address":{ "@type":"PostalAddress", "@context":"http://schema.org", "streetAddress":"202 Đường Phạm Văn Hai, Phường 4, Quận Tân Bình, Hồ Chí Minh", "addressLocality":"Quận Tân Bình", "addressRegion":"Quận Tân Bình", "postalCode":"" }, "geo": { "@type": "GeoCoordinates", "@context":"http://schema.org", "latitude": "10.7912823", "longitude": "106.6617747" }, "url":"https://phongtro123.com/tinh-thanh/cho-thue-phong-tro-cao-cap-gan-san-bay-tieu-chuan-chung-cu-mini-moi-xay-100-chuan-bi-giao-nha.html", "image": "https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2020/09/02/20200523-125927_1599042543.jpg", "priceRange": "3200000", "telephone": "0909913596" }</script>
                    <script
                    type="application/ld+json"> { "@context": "https://schema.org", "@type": "Product", "name": "PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH", "description": "Giá 3tr/ thángCách sân bay Tân Sơn Nhất 3 phút đi xe máyCách chợ Phạm Văn Hai 1 phút xe máyRất gần Quận 1 và…", "image": "https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2020/09/02/20200523-125927_1599042543.jpg", "category": "https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh", "productID": "202766", "sku": "202766", "offers": { "@type": "Offer", "price": "3200000", "priceCurrency": "VND", "availability": "http://schema.org/InStock", "url": "https://phongtro123.com/tinh-thanh/ho-chi-minh/cho-thue-phong-tro-cao-cap-gan-san-bay-tieu-chuan-chung-cu-mini-moi-xay-100-chuan-bi-giao-nha.html" } }</script>
                    <div class="container clearfix">
                        <script
                        type="application/ld+json"> { "@context": "http://schema.org", "@type": "BreadcrumbList", "itemListElement": [ { "@type": "ListItem", "position": 1, "item": { "@id": "https://phongtro123.com/cho-thue-phong-tro", "name": "Cho thuê phòng trọ" } } ,{ "@type": "ListItem", "position": 2, "item": { "@id": "https://phongtro123.com/tinh-thanh/ho-chi-minh", "name": "Cho thuê phòng trọ Hồ Chí Minh" } } ,{ "@type": "ListItem", "position": 3, "item": { "@id": "https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh", "name": "Cho thuê phòng trọ Quận Tân Bình" } } ,{ "@type": "ListItem", "position": 4, "item": { "@id": "https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh/phuong-4", "name": "Cho thuê phòng trọ Phường 4" } } ]}</script>
                        <div id="breadcrumb">
                            <ol class="clearfix">
                                <li class="first link"><a href="https://phongtro123.com/cho-thue-phong-tro"
                                                          title="Cho thuê phòng trọ"><span>Cho thuê phòng trọ</span></a></li>
                                <li class="link link"><a href="https://phongtro123.com/tinh-thanh/ho-chi-minh"
                                                         title="Cho thuê phòng trọ Hồ Chí Minh"><span>Hồ Chí Minh</span></a></li>
                                <li class="link link"><a href="https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh"
                                                         title="Cho thuê phòng trọ Quận Tân Bình"><span>Quận Tân Bình</span></a></li>
                                <li class="link last"><a
                                        href="https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh/phuong-4"
                                        title="Cho thuê phòng trọ Phường 4"><span>Phường 4</span></a></li>
                            </ol>
                        </div>
                        <div id="left-col">
                            <article class="the-post tin-vip vipnoibat">
                                <div class="post-images">
                                    <div class="images-swiper-container swiper-container-horizontal">
                                        <div class="swiper-wrapper"
                                             style="transform: translate3d(-728px, 0px, 0px); transition-duration: 0ms;">
                                            <div class="swiper-slide swiper-slide-duplicate swiper-slide-prev"
                                                 data-swiper-slide-index="6" style="width: 728px;"><img id="sliderimg"
                                                    alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                    src="${firstImg}">
                                            </div>
                                            <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="0"
                                                 style="width: 728px;"><img id="sliderimg"  alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                       src="${firstImg}">
                                            </div>
                                            <!--                                    <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="1"
                                                                                    style="width: 728px;"><img alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/01/03/0fb7ef5e-09a9-4a91-9555-853d3ff7bbab_1546511380.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide" data-swiper-slide-index="2" style="width: 728px;"><img
                                                                                        alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/01/03/10c71ba1-4f83-47fc-8a8b-7a6839261619_1546511398.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide" data-swiper-slide-index="3" style="width: 728px;"><img
                                                                                        alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/09/02/20200523-125854_1599042507.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide" data-swiper-slide-index="4" style="width: 728px;"><img
                                                                                        alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/09/02/20200523-125911_1599042565.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide" data-swiper-slide-index="5" style="width: 728px;"><img
                                                                                        alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/01/03/6b885449-6181-47a8-91c4-8b5b49ec8a97_1546511387.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide swiper-slide-duplicate-prev" data-swiper-slide-index="6"
                                                                                    style="width: 728px;"><img alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/01/03/367b401b-a197-4be9-9f39-452ce622473c_1546511405.jpg">
                                                                                </div>-->
                                            <!--                                    <div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
                                                                                    data-swiper-slide-index="0" style="width: 728px;"><img
                                                                                        alt="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH"
                                                                                        src="https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/09/02/20200523-125927_1599042543.jpg">
                                                                                </div>-->
                                        </div>
                                        <div class="swiper-pagination swiper-pagination-fraction"><span
                                                class="swiper-pagination-current">1</span> / <span
                                                class="swiper-pagination-total">7</span></div>
                                        <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" onclick="prevImage()">
                                        </div>
                                        <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" onclick="nextImage()">
                                        </div><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                    </div>
                                </div>
                                <header class="page-header">
                                    <h1 class="page-h1"><span class="star star-5" style="float: left;"></span><a
                                            style="color: #E13427;"
                                            href="https://phongtro123.com/tinh-thanh/ho-chi-minh/cho-thue-phong-tro-cao-cap-gan-san-bay-tieu-chuan-chung-cu-mini-moi-xay-100-chuan-bi-giao-nha.html"
                                            title="PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH">PHÒNG TRỌ CAO CẤP TẠI QUẬN TÂN BÌNH</a>
                                    </h1>
                                    <div class="clearfix"></div>
                                    <p style="margin-bottom: 10px;">Chuyên mục: <a style="text-decoration: underline; "
                                                                                   title="Phòng trọ Quận Tân Bình"
                                                                                   href="https://phongtro123.com/tinh-thanh/ho-chi-minh/quan-tan-binh"><strong>Cho thuê
                                                phòng trọ Quận Tân Bình</strong></a></p>
                                    <address class="post-address">Địa chỉ: 202 Đường Phạm Văn Hai, Phường 4, Quận Tân Bình, Hồ
                                        Chí Minh</address>
                                    <div class="post-attributes">
                                        <div class="item price"><i></i><span
                                                style="color: #16c784; font-weight: bold; font-size: 1.5rem">3.2
                                                triệu/tháng</span></div>
                                        <div class="item acreage"><i></i><span> 22m<sup>2</sup></span></div>
                                        <div class="item published"><i></i><span title="Thứ 5, 10:10 15/06/2023">4 giờ
                                                trước</span></div>
                                        <div class="item hashtag"><i></i><span>202766</span></div>
                                    </div>
                                </header>
                                <section class="section post-main-content">
                                    <div class="section-header">
                                        <h2 class="section-title">Thông tin mô tả</h2>
                                    </div>
                                    <div class="section-content">
                                        <p id="pr">Giá 3tr/ tháng</p>
                                        <p>Cách sân bay Tân Sơn Nhất 3 phút đi xe máy</p>
                                        <p>Cách chợ Phạm Văn Hai 1 phút xe máy</p>
                                        <p>Rất gần Quận 1 và Quận 3 : di chuyển thuận lợi bằng đường Hoàng Sa Trường Sa.</p>
                                        <p>Tiện ích xung quanh gồm Biện Viện, Trường Học, Chợ, Siêu Thị, Nằm rất gần bờ kè kênh
                                            Nhiêu Lộc nên rất thuận tiện đi làm về giờ tan tầm, tránh được kẹt xe.</p>
                                        <p>Diện tích mỗi phòng từ 25m2 đến 27m2 có tầng lửng cho bạn không gian sống riêng tư
                                            cho dù bạn là gia đình nhỏ hay nhóm bạn ở chung</p>
                                        <p>Khu vực an ninh, yên tĩnh, thuận tiện trong mọi sinh hoạt</p>
                                        <p>Có bãi gửi xe riêng cho không gian sống them rộng mở.</p>
                                        <p>Bảo vệ an ninh 24/7 bảo đảm cho bạn và tài sản của bạn.</p>
                                        <p>Dịch vụ linh hoạt tùy thuộc vào nhu cầu của bạn.</p>
                                        <p>Không gian RIÊNG TƯ, YÊN TĨNH, TỰ DO, không bị ai làm phiền.</p>
                                        <p>Bạn được TỰ DO TIẾP KHÁCH người thân, bạn bè.</p>
                                        <p>Vệ sinh sạch sẽ không gian sử dụng chung 24/7</p> 
                                        <p>Địa chỉ liên hệ : 380/290A Phạm Văn Hai (Đi vào bằng hẻm 202 Phạm Văn Hai)</p>
                                        <p>Vui Lòng Liên Hệ Số Điện Thoại : 0909913596 cô Linh để xem phòng</p>
                                    </div>
                                </section>
                                <section class="section post-overview">
                                    <div class="section-header">
                                        <h3 class="section-title">Đặc điểm tin đăng</h3>
                                    </div>
                                    <div class="section-content">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="name">Mã tin:</td>
                                                    <td>#202766</td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Khu vực</td>
                                                    <td> Cho thuê phòng trọ Hồ Chí Minh </td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Loại tin rao:</td>
                                                    <td>Phòng trọ, nhà trọ</td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Đối tượng thuê:</td>
                                                    <td>Tất cả</td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Gói tin:</td>
                                                    <td><span style="color: #E13427;">Tin VIP nổi bật</span></td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Ngày đăng:</td>
                                                    <td><time title="Thứ 5, 10:10 15/06/2023">Thứ 5, 10:10 15/06/2023</time>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Ngày hết hạn:</td>
                                                    <td><time title="Thứ 5, 10:10 22/06/2023">Thứ 5, 10:10 22/06/2023</time>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                                <section class="section post-contact">
                                    <div class="section-header">
                                        <h3 class="section-title">Thông tin liên hệ</h3>
                                    </div>
                                    <div class="section-content">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="name">Liên hệ:</td>
                                                    <td> Trần Minh Trung </td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Điện thoại:</td>
                                                    <td> 0909913596 </td>
                                                </tr>
                                                <tr>
                                                    <td class="name">Zalo</td>
                                                    <td> 0909913596 </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                                <div class="post-fix-bar">
                                    <div class="inner clearfix">
                                        <div class="left-bar"><span class="post-fix-bar-price">3.2 triệu/tháng <span
                                                    style="color: #333; font-weight: normal;">-
                                                    22m<sup>2</sup></span></span><span class="post-fix-bar-address">202 Đường
                                                Phạm Văn Hai, Phường 4, Quận Tân Bình, Hồ Chí Minh</span></div>
                                        <div class="right-bar"><span class="post-fix-bar-save js-btn-save saved"
                                                                     data-post-id="202766" title="Tin đã lưu"><i></i> Yêu thích</span><a
                                                class="post-fix-bar-zalo" rel="nofollow" target="_blank"
                                                href="https://zalo.me/0909913596">Nhắn Zalo</a><a class="post-fix-bar-phone"
                                                rel="nofollow" target="_blank" href="tel:0909913596"><i></i> Gọi ngay
                                                0909913596</a></div>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <aside id="aside">
                            <div class="author-aside">
                                <figure class="author-avatar"><img src="https://phongtro123.com/images/default-user.png">
                                </figure><span class="author-name">Trần Minh Trung</span>
                                <div style="min-height: 16px; margin-bottom: 10px;">
                                    <div class="author-online-status online" author_id="29210"><i></i><span>Đang hoạt
                                            động</span></div>
                                </div><a class="btn author-phone" rel="nofollow" href="tel:0909913596"><i></i> 0909913596</a><a
                                    class="btn author-zalo" target="_blank" rel="nofollow"
                                    href="https://zalo.me/0909913596"><i></i> Nhắn Zalo</a><span
                                    class="btn post-save js-btn-save saved" data-post-id="202766" title="Tin đã lưu"><i></i> Yêu
                                    thích</span>
                            </div>
                            <section class="section section-aside-tinmoidang">
                                <div class="section-header"><span class="section-title">Tin nổi bật</span></div>
                                <ul class="post-listing aside clearfix">
                                    <li class="post-item clearfix tin-vip vipnoibat" post-id="58962"><a
                                            href="/tinh-thanh/ho-chi-minh/cho-thue-phong-tro-moi-xay-12846-thien-phuoc-p9-q-tb.html">
                                            <figure><img class="lazy_done"
                                                         src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2020/02/26/tp_1582694811.jpg"
                                                         data-src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2020/02/26/tp_1582694811.jpg"
                                                         alt="Cho thuê phòng trọ 128/46 Thiên Phước, P.9, Q.Tân Bình (gần vòng xoay Lê Đại Hành)"
                                                         height="100" width="100" layout="responsive" data-loaded="true"></figure>
                                            <div class="post-meta"><span class="post-title" style="color: #E13427;"><span
                                                        class="star star-5"></span> Cho thuê phòng trọ 128/46 Thiên Phước, P.9,…
                                                </span><span class="post-price">2.5 triệu/tháng</span><time class="post-time"
                                                                                                            title="Thứ 4, 17:16 07/06/2023">Hôm nay</time></div>
                                        </a></li>
                                    <li class="post-item clearfix tin-vip vip1" post-id="314706"><a
                                            href="/phong-cho-thue-du-moi-tien-nghi-gio-giac-tu-do-ngay-cong-vien-hoang-van-thu-quan-tan-binh-pr314706.html">
                                            <figure><img class="lazy_done"
                                                         src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2023/05/20/14fa7f46-1cd6-4ee8-bbd0-b01dd1b9f2c3_1684568179.jpg"
                                                         data-src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2023/05/20/14fa7f46-1cd6-4ee8-bbd0-b01dd1b9f2c3_1684568179.jpg"
                                                         alt="Phòng cho thuê FULL Nội Thất, giờ giấc tự do ngay công viên Hoàng Văn Thụ. Siêu ưu đãi mùa dịch"
                                                         height="100" width="100" layout="responsive" data-loaded="true"><span
                                                         class="has-video"></span></figure>
                                            <div class="post-meta"><span class="post-title" style="color: #ea2e9d;"><span
                                                        class="star star-4"></span> Phòng cho thuê FULL Nội Thất, giờ giấc tự
                                                    do… </span><span class="post-price">3.5 triệu/tháng</span><time
                                                    class="post-time" title="Thứ 4, 07:28 14/06/2023">Hôm nay</time></div>
                                        </a></li>
                                    <li class="post-item clearfix tin-vip vip1" post-id="588197"><a
                                            href="/nha-o-chung-chu-gio-giac-tu-do-pr588197.html">
                                            <figure><img class="lazy_done"
                                                         src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2021/05/28/eca9b02f-1ebe-4f70-8ac5-0aac217e949c-1568169924-1584156094_1622168156.jpg"
                                                         data-src="https://pt123.cdn.static123.com/images/thumbs/450x300/fit/2021/05/28/eca9b02f-1ebe-4f70-8ac5-0aac217e949c-1568169924-1584156094_1622168156.jpg"
                                                         alt="Nhà trọ sinh viên giờ giấc tự do giá từ 2.3tr/tháng đến 2tr7/tháng ( Tùy diện tích )"
                                                         height="100" width="100" layout="responsive" data-loaded="true"></figure>
                                            <div class="post-meta"><span class="post-title" style="color: #ea2e9d;"><span
                                                        class="star star-4"></span> Nhà trọ sinh viên giờ giấc tự do giá từ…
                                                </span><span class="post-price">2.3 triệu/tháng</span><time class="post-time"
                                                                                                            title="Thứ 3, 11:03 13/06/2023">Hôm nay</time></div>
                                        </a></li>
                                </ul>
                            </section>
                            <section class="section section-sublink">
                                <div class="section-header"><span class="section-title">Có thể bạn quan tâm</span></div>
                                <ul class="list-links clearfix">
                                    <li><a href="/news/hop-dong-thue-nha-tro-phong-tro"
                                           title="Mẫu hợp đồng cho thuê phòng trọ">Mẫu hợp đồng cho thuê phòng trọ</a></li>
                                    <li><a href="/kinh-nghiem/kinh-nghiem-thue-phong-tro-tranh-bi-lua-gat.html"
                                           title="Cẩn thận các kiểu lừa đảo khi thuê phòng trọ">Cẩn thận các kiểu lừa đảo khi
                                            thuê phòng trọ</a></li>
                                    <li><a href="/kinh-nghiem/chia-se-10-kinh-nghiem-khi-thue-phong-tro-cho-sinh-vien.html"
                                           title="Kinh nghiệm thuê phòng trọ cho Sinh Viên">Kinh nghiệm thuê phòng trọ Sinh
                                            Viên</a></li>
                                </ul>
                            </section>
                        </aside>
                    </div>
                </main>
            <jsp:include page="footer.jsp"></jsp:include>  
            </div>
            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
            <script>
                var imagePaths = [];
                imagePaths = '${imgPath}'.split(',');
                var slider = document.getElementById('sliderimg');
                var currentIndex = 0;
                function changeImage() {
                    slider.src = "./assets/images/" + imagePaths[currentIndex];
                }
                function nextImage() {
                    currentIndex++;
                    if (currentIndex >= imagePaths.length) {
                        currentIndex = 0;
                    }
                    changeImage();
                }
                function prevImage() {
                    currentIndex--;
                    if (currentIndex < 0) {
                        currentIndex = imagePaths.length - 1;
                    }
                    changeImage();
                }
                function disMess() {
                    var m = document.getElementById('ofmess');
                    if (m.style.display === 'none') {
                        m.style.display = 'block';
                    } else {
                        m.style.display = 'none';
                    }
                }
                function submitForm() {
                    document.getElementById('sen').submit();
                }
        </script>
    </body>
</html>
