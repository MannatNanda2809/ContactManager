/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.ejb;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import model.Contact;

/**
 *
 * @author Mannat
 */
@Stateless
public class ContactDAO {

    @PersistenceContext(unitName = "ContactManagerPU")
    private EntityManager em;
    
    public void addContact(Contact contact) {
        em.persist(contact);
    }
    public void editContact(Contact contact){
        em.merge(contact);
    }
    public void deleteContact(Integer id){
        Contact contact = em.find(Contact.class, id);
        em.remove(contact);
    }
    public Contact getContact(Integer id){
        return em.find(Contact.class, id);
    }
    public List getAllContacts(){
        return em.createNamedQuery("Contact.findAll").getResultList();
    }
}
