<!-- Modal -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>-->

<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editUserModalLabel" style="color: black">Chỉnh sửa thông tin người dùng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Form chỉnh sửa thông tin người dùng -->
                <form>
                    <div class="form-group">
                        <label for="Id">ID:</label>
                        <input type="text" class="form-control" id="Id" name="Id" value="" readonly>
                    </div>
                    <div class="form-group">
                        <label for="Email">Email:</label>
                        <input type="email" class="form-control" id="Email" name="Email">
                    </div>
                    <div class="form-group">
                        <label for="Password">Mật khẩu:</label>
                        <input type="password" class="form-control" id="Password" name="Password">
                    </div>
                    <div class="form-group">
                        <label for="Fullname">Họ và tên:</label>
                        <input type="text" class="form-control" id="Fullname" name="Fullname">
                    </div>
                    <div class="form-group">
                        <label for="Role_ID">Vai trò:</label>
                        <select class="form-control" id="Role_ID" name="Role_ID">
                            <c:if test="${account.Role_ID == 1}">
                                <option value="1">Admin</option>
                            </c:if>
                            <option value="2">Manager</option>
                            <option value="3">Tenant</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="Gender">Giới tính:</label>
                        <select class="form-control" id="Gender" name="Gender">
                            <option value="1">Nam</option>
                            <option value="0">Nữ</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="Phone_Number">Số điện thoại:</label>
                        <input type="tel" class="form-control" id="Phone_Number" name="Phone_Number">
                    </div>
                    <div class="form-group">
                        <label for="Address">Địa chỉ:</label>
                        <input type="text" class="form-control" id="Address" name="Address">
                    </div>
                    <div class="form-group">
                        <label for="Status">Trạng thái:</label>
                        <select class="form-control" id="Status" name="Status">
                            <option value="1">Hoạt động</option>
                            <option value="0">Không hoạt động</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary" onclick="saveUser()">Lưu</button>
            </div>
        </div>
    </div>
</div>

<script>
    $('#editUserModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var Id = button.data("Id");
        var Email = button.data("Email");
        var Password = button.data("Password");
        var Fullname = button.data("Fullname");
        var Role_ID = button.data("Role_ID");
        var Gender = button.data("Gender");
        var Phone_Number = button.data("Phone_Number");
        var Address = button.data("Address");
        var Status = button.data("Status");

        var modal = $(this);
        modal.find('#Id').val(Id);
        modal.find('#Email').val(Email);
        modal.find('#Password').val(Password);
        modal.find('#Fullname').val(Fullname);
        modal.find('#Role_ID').val(Role_ID);
        modal.find('#Gender').val(Gender);
        modal.find('#Phone_Number').val(Phone_Number);
        modal.find('#Address').val(Address);
        modal.find('#Status').val(Status);
    });


    function saveUser() {
        var Id = $('#Id').val();
        var Password = $('#Password').val();
        var Fullname = $('#Fullname').val();
        var Role_ID = $('#Role_ID').val();
        var Email = $('#Email').val();
        var Phone_Number = $('#Phone_Number').val();
        var Address = $('#Address').val();
        var Status = $('#Status').val();
        var currentUrl = window.location.href;
        // Make an Ajax request to the server to update the user's information
        $.ajax({
            type: "POST",
            url: "admin-update-user",
            data: {
                Id: Id,
                Email: Email,
                Password: Password,
                Fullname: Fullname,
                Role_ID: Role_ID,
                Gender: Gender,
                Phone_Number: Phone_Number,
                Address: Address,
                Status: Status
            },
            success: function (response) {
                // Update the accountViews session with the updated account information
                $.ajax({
                    type: "POST",
                    url: "admin-home",
                    success: function (response) {
                        var accountViews = response;
                        if (accountViews) {
                            // Set the updated accountViews to sessionStorage
                            sessionStorage.setItem('accountList', JSON.stringify(accountList));
                            // Reload the current page to display the updated account information
                            location.reload();
                        }
                    }
                });
                // Close the modal dialog
                $('#editUserModal').modal('hide');
            },
            error: function (xhr, status, error) {
                console.error(xhr.responseText);
            }
        });
    }
</script>