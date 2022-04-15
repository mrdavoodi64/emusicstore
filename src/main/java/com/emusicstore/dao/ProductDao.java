package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(String productId);

    List<Product> getAllProducts();

    void deleteProduct(String productId);
}
