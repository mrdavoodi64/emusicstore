package com.emusicstore.dao.Impl;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product) {

        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public Product getProductById(String productId) {
        Session session=sessionFactory.getCurrentSession();
        Product product=session.get(Product.class,productId);
        session.flush();
        return product;
    }

    public List<Product> getAllProducts() {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Product ");
        List<Product> products= query.getResultList();
        session.flush();
        return products;
    }

    public void deleteProduct(String productId) {

        Session session=sessionFactory.getCurrentSession();
        session.delete(getProductById(productId));
        session.flush();

    }
}
