<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Trang quản trị</title>
        <!-- Đường dẫn tới các file CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Đường dẫn tới các file JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Đường dẫn tới các file JavaScript -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Main CSS-->
        <link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- or -->
        <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <!-- Font-icon css-->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <main class="app-content">
            <div class="app-title">
                <ul class="app-breadcrumb breadcrumb side">
                    <li class="breadcrumb-item active"><a href="#"><b>Danh sách nhà</b></a></li>
                </ul>
                <div id="clock"></div>
            </div>
            <form action="housemanager?action=updatehouse" method="POST">
                <table class="table table-hover table-bordered" id="sampleTable">
                    <thead>
                        <tr>
                            <th>Mã ngôi nhà</th>
                            <th>Địa chỉ</th>
                            <th>Giá/tháng</th>
                            <th>Mô tả</th>
                            <th>Tỉnh/Thành </th>
                            <th>Ảnh</th>
                            <th>Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${HouseData}" var="h">
                            <tr>
                                <td>${h.house_id}</td>
                                <td>${h.address}</td>
                                <td>${h.price}</td>
                                <td>${h.describe}</td>
                                <td>${h.city}</td>
                                <td><img src="${h.img}" alt="" width="100px;"></td>

                                <td>
                                    <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                            data-toggle="modal" data-target="#ModalUP${h.house_id}"><i class="fas fa-edit"></i>
                                    </button>
                                </td>
                            </tr>

                            <!--
                            MODAL
                            -->

                        <div class="modal fade" id="ModalUP${h.house_id}" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
                             data-keyboard="false">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="form-group  col-md-12">
                                                <span class="thong-tin-thanh-toan">
                                                    <h5>Chỉnh sửa thông tin ngôi nhà</h5>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div>
                                                <input  class="form-control" type="text" readonly name="house_id" value="${h.house_id}" hidden="">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">Địa chỉ</label>
                                                <input class="form-control" type="text" name="address" required value="${h.address}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">Giá</label>
                                                <input class="form-control" type="number" name="price" required value="${h.price}">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label class="control-label">Tỉnh/Thành</label>
                                                <input class="form-control" type="text" name="city" value="${h.city}">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label class="control-label">Mô tả</label>
                                                <input class="form-control" type="text" name="describe" value="${h.describe}">
                                            </div>

                                            <!--anh san pham-->
                                            <div class="form-group col-md-12">
                                                <label class="control-label">Ảnh sản phẩm</label>
                                                <div id="myfileupload">
                                                    <input type="file" id="uploadfile" name="img" value="${h.img}" onchange="readURL(this);" />
                                                </div>
                                                <div id="thumbbox">
                                                    <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none" />
                                                    <a class="removeimg" href="javascript:"></a>
                                                </div>
                                                <div id="boxchoice">
                                                    <a href="javascript:" class="Choicefile"><i class="fas fa-cloud-upload-alt"></i> Chọn ảnh</a>
                                                    <p style="clear:both"></p>
                                                </div>
                                            </div>
                                        </div>
                                        <BR>
                                        <button class="btn btn-save" type="submit">Lưu lại</button>
                                        <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                                        <BR>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--
                      MODAL
                        -->
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </main>
        <!-- Essential javascripts for application to work-->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="assets/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="assets/js/plugins/pace.min.js"></script>
        <!-- Page specific javascripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <!-- Data table plugin-->
        <script type="text/javascript" src="assets/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="assets/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">
                                                        $('#sampleTable').DataTable();
                                                        //Thời Gian
                                                        function time() {
                                                            var today = new Date();
                                                            var weekday = new Array(7);
                                                            weekday[0] = "Chủ Nhật";
                                                            weekday[1] = "Thứ Hai";
                                                            weekday[2] = "Thứ Ba";
                                                            weekday[3] = "Thứ Tư";
                                                            weekday[4] = "Thứ Năm";
                                                            weekday[5] = "Thứ Sáu";
                                                            weekday[6] = "Thứ Bảy";
                                                            var day = weekday[today.getDay()];
                                                            var dd = today.getDate();
                                                            var mm = today.getMonth() + 1;
                                                            var yyyy = today.getFullYear();
                                                            var h = today.getHours();
                                                            var m = today.getMinutes();
                                                            var s = today.getSeconds();
                                                            m = checkTime(m);
                                                            s = checkTime(s);
                                                            nowTime = h + " giờ " + m + " phút " + s + " giây";
                                                            if (dd < 10) {
                                                                dd = '0' + dd
                                                            }
                                                            if (mm < 10) {
                                                                mm = '0' + mm
                                                            }
                                                            today = day + ', ' + dd + '/' + mm + '/' + yyyy;
                                                            tmp = '<span class="date"> ' + today + ' - ' + nowTime +
                                                                    '</span>';
                                                            document.getElementById("clock").innerHTML = tmp;
                                                            clocktime = setTimeout("time()", "1000", "Javascript");

                                                            function checkTime(i) {
                                                                if (i < 10) {
                                                                    i = "0" + i;
                                                                }
                                                                return i;
                                                            }
                                                        }
        </script>
        <script>

            $(document).ready(jQuery(function () {
                jQuery(".trash").click(function () {
                    swal({
                        title: "Cảnh báo",
                        text: "Bạn có chắc chắn là muốn xóa sản phẩm này?",
                        buttons: ["Hủy bỏ", "Đồng ý"],
                    })
                            .then((willDelete) => {
                                if (willDelete) {
                                    window.location = "housemanager?action=deletehouse&house_id=" + $(this).attr("value");
                                    swal("Đã xóa thành công.!", {
                                    });
                                }
                            });
                });
            }));
        </script>
        <script>
            var myApp = new function () {
                this.printTable = function () {
                    var tab = document.getElementById('sampleTable');
                    var win = window.open('', '', 'height=700,width=700');
                    win.document.write(tab.outerHTML);
                    win.document.close();
                    win.print();
                }
            }
        </script>
    </body>
</body>
</html>
