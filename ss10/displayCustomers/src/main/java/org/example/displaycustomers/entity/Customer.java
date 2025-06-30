package org.example.displaycustomers.entity;

import java.time.LocalDate;

public class Customer {
    String nameCus;
    String dateOfBirth;
    String addressCus;
    String img;
    public Customer() {}
    public Customer(String nameCus, String dateOfBirth, String addressCus, String img) {
        this.nameCus = nameCus;
        this.dateOfBirth = dateOfBirth;
        this.addressCus = addressCus;
        this.img = img;
    }

    public String getNameCus() {
        return nameCus;
    }

    public void setNameCus(String nameCus) {
        this.nameCus = nameCus;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddressCus() {
        return addressCus;
    }

    public void setAddressCus(String addressCus) {
        this.addressCus = addressCus;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
