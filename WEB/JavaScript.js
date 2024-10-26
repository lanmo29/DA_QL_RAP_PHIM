$(document).ready(function () {
    function loadTable() {
        var container = $("#noidung");
        container.empty();
        container.append('<div>Đang tải dữ liệu...</div>');

        $.post('API.aspx', { action: 'get_infor' }, function (data) {
            container.empty();
            if (data.length > 0) {
                data.forEach(phim => {
                    var eventDiv = $("<div class='event'></div>");

                    var phimDiv = $("<div id='phim-" + phim.MaPhim + "' class='info-section'></div>");
                    var phimInfo = $("<div class='info'></div>");
                    var phimEdit = $("<div class='actions'></div>");
                    phimInfo.append($("<div id='maphim'></div>").text("Mã phim: " + phim.MaPhim));
                    phimInfo.append($("<div></div>").text("Tên phim: " + phim.TenPhim));
                    phimInfo.append($("<div></div>").text("Loại phim: " + phim.LoaiPhim));
                    phimInfo.append($("<div></div>").text("Ngày chiếu: " + new Date(phim.NgayChieu).toLocaleDateString()));
                    phimInfo.append($("<div></div>").text("Thời lượng: " + phim.ThoiLuong + " phút"));
                    phimInfo.append($("<div></div>").text("Mã vé: " + phim.MaVe));
                    phimInfo.append($("<div></div>").text("Ngày bán: " + new Date(phim.NgayBan).toLocaleDateString()));
                    phimInfo.append($("<div></div>").text("Giá vé: " + phim.GiaVe.toLocaleString() + " VNĐ"));

                    phimEdit.append(`<button class="edit-btn" onclick="sua_phim('${phim.MaPhim}', this)">Sửa</button>
                                     <button class="delete-btn" onclick="Xoa_phim('${phim.MaPhim}', this)">Xóa</button>`);

                    phimDiv.append(phimInfo, phimEdit);
                    eventDiv.append(phimDiv);

                    container.append(eventDiv);
                });
            } else {
                container.append('<div>Không có dữ liệu nào.</div>');
            }
        }, 'json');
    }

    window.sua_phim = function (maphim, button) {
        var phimDiv = $(button).closest('#phim-' + maphim);
        var currentTenPhim = phimDiv.find('.info div').eq(1).text().replace("Tên phim: ", "").trim();
        var currentLoaiPhim = phimDiv.find('.info div').eq(2).text().replace("Loại phim: ", "").trim();
        var currentNgayChieu = phimDiv.find('.info div').eq(3).text().replace("Ngày chiếu: ", "").trim();
        var currentThoiLuong = phimDiv.find('.info div').eq(4).text().replace("Thời lượng: ", "").replace(" phút", "").trim();
        var currentGiaVe = phimDiv.find('.info div').eq(6).text().replace("Giá vé: ", "").replace(" VNĐ", "").trim();

        var html = `
        <form id="editPhimForm">
            <div class="mb-3">
                <label for="tenphimEditInput" class="form-label">Tên Phim</label>
                <input type="text" class="form-control" id="tenphimEditInput" value="${currentTenPhim}">
            </div>
            <div class="mb-3">
                <label for="loaiPhimEditInput" class="form-label">Loại Phim</label>
                <input type="text" class="form-control" id="loaiPhimEditInput" value="${currentLoaiPhim}">
            </div>
            <div class="mb-3">
                <label for="ngayChieuEditInput" class="form-label">Ngày Chiếu</label>
                <input type="date" class="form-control" id="ngayChieuEditInput" value="${currentNgayChieu}">
            </div>
            <div class="mb-3">
                <label for="thoiLuongEditInput" class="form-label">Thời Lượng (phút)</label>
                <input type="number" class="form-control" id="thoiLuongEditInput" value="${currentThoiLuong}">
            </div>
        </form>
        `;

        $.confirm({
            title: 'Chỉnh Sửa Phim',
            content: html,
            buttons: {
                save: {
                    text: 'Sửa',
                    btnClass: 'btn-primary',
                    action: function () {
                        var newTenPhim = $('#tenphimEditInput').val();
                        var newLoaiPhim = $('#loaiPhimEditInput').val();
                        var newNgayChieu = $('#ngayChieuEditInput').val();
                        var newThoiLuong = $('#thoiLuongEditInput').val();

                        $.post('API.aspx', { action: 'update_phim', maphim: maphim, tenphim: newTenPhim, loaiPhim: newLoaiPhim, ngayChieu: newNgayChieu, thoiLuong: newThoiLuong}, function (data) {
                            if (data.ok) {
                                $.alert('Chỉnh Sửa Thành Công');
                                phimDiv.find('.info div').eq(1).text("Tên phim: " + newTenPhim);
                                phimDiv.find('.info div').eq(2).text("Loại phim: " + newLoaiPhim);
                                phimDiv.find('.info div').eq(3).text("Ngày chiếu: " + new Date(newNgayChieu).toLocaleDateString());
                                phimDiv.find('.info div').eq(4).text("Thời lượng: " + newThoiLuong + " phút");
                            } else {
                                $.alert('Chỉnh Sửa Thất Bại');
                            }
                        }, 'json');
                    }
                },
                cancel: {
                    text: 'Hủy',
                    btnClass: 'btn-secondary',
                }
            }
        });
    };

    window.Xoa_phim = function (maPhim, button) {
        $.confirm({
            title: 'Xác nhận xóa',
            content: 'Bạn có chắc chắn muốn xóa phim này không?',
            buttons: {
                yes: {
                    text: 'Có',
                    btnClass: 'btn-danger',
                    action: function () {
                        $.post('API.aspx', { action: 'delete_phim', maPhim: maPhim }, function (data) {
                            if (data.ok) {
                                $("#" + "phim-" + maPhim).remove();
                                $.alert('Xóa thành công!');
                                loadTable();
                            } else {
                                $.alert('Xóa thất bại: ' + data.msg);
                            }
                        }, 'json').fail(function () {
                            $.alert('Có lỗi xảy ra trong quá trình xóa.');
                        });
                    }
                },
                cancel: {
                    text: 'Không',
                    btnClass: 'btn-secondary',
                }
            }
        });
    };

    loadTable();
});
