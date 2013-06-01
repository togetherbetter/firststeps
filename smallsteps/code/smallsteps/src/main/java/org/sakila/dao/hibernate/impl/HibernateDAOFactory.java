package org.sakila.dao.hibernate.impl;

import org.sakila.dao.DAOFactory;
import org.sakila.dao.hibernate.ActorDAO;


/**
 * Returns Hibernate-specific instances of DAOs.
 * <p/>
 * If for a particular DAO there is no additional non-CRUD functionality, we use
 * a nested static class to implement the interface in a generic way. This allows clean
 * refactoring later on, should the interface implement business data access
 * methods at some later time. Then, we would externalize the implementation into
 * its own first-level class.
 *
 * @author Christian Bauer
 */
public class HibernateDAOFactory extends DAOFactory {

    /*private static Log log = LogFactory.getLog(HibernateDAOFactory.class);*/

    private GenericHibernateDAO instantiateDAO(Class daoClass) {
    	try {
    		/*log.debug("Instantiating DAO: " + daoClass);*/
    		return (GenericHibernateDAO)daoClass.newInstance();
    	} catch (Exception ex) {
    		throw new RuntimeException("Can not instantiate DAO: " + daoClass, ex);
    	}
    }

	@Override
	public ActorDAO getActorDAO() {
		return (ActorDAO)instantiateDAO(ActorDAOHibernate.class);
	}
    
    


    // Inline concrete DAO implementations with no business-related data access methods.
    // If we use public static nested classes, we can centralize all of them in one source file.

    /*public static class CategorizedItemDAOHibernate
            extends GenericHibernateDAO<CategorizedItem, CategorizedItem.Id>
            implements CategorizedItemDAO {}

    public static class CommentDAOHibernate
            extends GenericHibernateDAO<Comment, Long>
            implements CommentDAO {}

    public static class ShipmentDAOHibernate
            extends GenericHibernateDAO<Shipment, Long>
            implements ShipmentDAO {}*/

}
