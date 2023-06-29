<%-- 
    Document   : admin-list-account
    Created on : Jun 22, 2023, 4:42:12 PM
    Author     : Hayashi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <table class="table table-hover table-bordered" id="accountTable">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên đăng nhập</th>
                        <th>Họ và tên</th>
                        <th>Vai trò</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${accountList}" var="acc">
                    <tr>
                        <td>${acc.id}</td>
                        <td>${acc.fullname}</td>
                        <td>${acc.email}</td>
                        <td>${acc.email}</td>
                        <td>${acc.phoneNumber}</td>
                        <td>
                            <c:if test="${acc.roleID == 1}">Admin</c:if>
                            <c:if test="${acc.roleID == 2}">Manager</c:if>
                            <c:if test="${acc.roleID == 3}">Tenant</c:if>
                            </td>
                            <td>${acc.status == 1 ? "Active" : "Disabled"}</td>
                        <td>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#editUserModal"
                                    data-id="${acc.id}"
                                    data-email="${acc.email}"
                                    data-password="${acc.password}"
                                    data-fullname="${acc.fullname}"
                                    data-gender="${acc.gender}"
                                    data-roleID="${acc.roleID}"
                                    data-phoneNumber="${acc.phoneNumber}"
                                    data-status="${acc.status}">
                                Change
                            </button>    
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editUserModalLabel">Edit User Profile</h5>
                        <button class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="id">ID:</label>
                                <input type="text" class="form-control" id="id" name="id" readonly>
                            </div>
                            <div class="form-group">
                                <label for="fullname">Full Name:</label>
                                <input type="text" class="form-control" id="fullname" name="fullname">
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="text" class="form-control" id="email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <div class="form-group">
                                <label for="role">Role:</label>
                                <select class="form-control" id="role" name="role">
                                    <option value="1">Admin</option>
                                    <option value="2">House Owner</option>
                                    <option value="3">Tenant</option>
                                </select>
                            </div>
                            <div class='form-group'>
                                <label for='gender'>Gender:</label>
                                <select class='form-control' id='gender' name='gender'>
                                    <option value='1'>Male</option>
                                    <option value='0'>Female</option>
                                </select>
                            </div>
                            <div class='form-group'>
                                <label for='phoneNumber'>Phone Number:</label>
                                <input type='text' class='form-control' id='phoneNumber' name='phoneNumber'>
                            </div>
                            <div class='form-group'>
                                <label for='status'>Status:</label>
                                <select class='form-control' id='status' name='status'>
                                    <option value='1'>Active</option>
                                    <option value='0'>Disabled</option>
                                </select>
                            </div>
                        </form>
                    </div>

                    <div class='modal-footer'>
                        <button class='btn btn-secondary' data-dismiss='modal'>Close</button>
                        <button class='btn btn-primary' onclick='saveUser()'>Save</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
                            $('#editUserModal').on('show.bs.modal', function (event) {
                                var button = $(event.relatedTarget);
                                var id = button.data('id');
                                var fullname = button.data('fullname');
                                var email = button.data('email');
                                var password = button.data('password');
                                var roleId = button.data('roleID');
                                var gender = button.data('gender');
                                var phoneNumber = button.data('phoneNumber');
                                var status = button.data('status');

                                var modal = $(this);
                                modal.find('#id').val(id);
                                modal.find('#fullname').val(fullname);
                                modal.find('#email').val(email);
                                modal.find('#password').val(password);
                                modal.find('#role').val(roleId);
                                modal.find('#gender').val(gender);
                                modal.find('#phoneNumber').val(phoneNumber);
                                modal.find('status').val(status);
                            });

                            function saveUser() {
                                var id = $('#id').val();
                                var fullname = $('#fullname').val();
                                var email = $('#email').val();
                                var password = $('#password').val();
                                var role = $('#role').val();
                                var gender = $('gender').val();
                                var phoneNumber = $('phoneNumber').val();
                                var status = $('#status').val();
                                var currentUrl = window.location.href;

                                $.ajax({
                                    type: "POST",
                                    url: "admin-update-user",
                                    data: {
                                        id: id,
                                        fullname: fullname,
                                        email: email,
                                        password: password,
                                        roleID: role,
                                        gender: gender,
                                        phoneNumber: phoneNumber,
                                        status: status
                                    },
                                    success: function (response) {
                                        $.ajax({
                                            type: "POST",
                                            url: "admin-home",
                                            success: function (response) {
                                                var accountList = response;
                                                if (accountList) {
                                                    sessionStorage.setItem('accountList', JSON.stringify(accountList));
                                                    location.reload();
                                                }
                                            }
                                        });
                                        $('#editUserModal').modal('hide');
                                    },
                                    error: function (xhr, status, error) {
                                        console.error(xhr.responseText);
                                    }
                                });
                            }
    </script>
</html>
