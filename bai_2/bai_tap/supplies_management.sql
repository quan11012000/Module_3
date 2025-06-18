use erd_management;
create table phieu_xuat(
	so_px int,
    ngay_xuat date,
    primary key(so_px)
);
create table chi_tiet_px(
	so_px int,
    ma_vtu int,
    dg_xuat double,
    sl_xuat int,
    primary key(so_px, ma_vtu),
    foreign key (so_px) references phieu_xuat(so_px),
    foreign key (ma_vtu) references vat_tu(ma_vtu)
);
create table vat_tu(
	ma_vtu int,
    ten_vtu varchar(50),
    primary key(ma_vtu)
);
create table phieu_nhap(
	so_pn int,
    ngay_nhap date,
    primary key(so_pn)
);
create table chi_tiet_pn(
	ma_vtu int,
    so_pn int,
    dg_nhap double,
    sl_nhap int,
    primary key(ma_vtu,so_pn),
    foreign key(ma_vtu) references vat_tu(ma_vtu),
    foreign key(so_pn) references phieu_nhap(so_pn)
);
create table don_dh(
	so_dh int,
    ma_ncc int,
    ngay_dh date,
    primary key(so_dh,ma_ncc),
    foreign key(ma_ncc) references nha_cc(ma_ncc)
);
create table chi_tiet_dh(
	ma_vtu int,
    so_dh int,
    primary key(ma_vtu,so_dh),
    foreign key (ma_vtu) references vat_tu(ma_vtu),
    foreign key (so_dh) references don_dh(so_dh)
);
create table nha_cc(
	so_dh int,
	ma_ncc int,
    ten_ncc varchar(100),
    dia_chi text,
    sdt varchar(11),
    primary key(ma_ncc)
);
create table sdt(
	ma_ncc int,
    sdt varchar(11),
    primary key(ma_ncc,sdt),
    foreign key (ma_ncc) references nha_cc(ma_ncc)
);

    