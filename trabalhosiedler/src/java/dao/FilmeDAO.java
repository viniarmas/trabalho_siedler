package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import modelo.Filme;

/**
 *
 * @author marcelosiedler
 */
public class FilmeDAO {

    EntityManager em;
    
    public FilmeDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Filme obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            //em.close();
            
        }
        
    }

    public List<Filme> listar() throws Exception {
        return em.createNamedQuery("Filme.findAll").getResultList();
    }
    
    public void alterar(Filme obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            // em.close();
        }
    }
    
    public void excluir(Filme obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            //em.close();
        }
    }
     public Filme buscarPorChavePrimaria(Long Filme){
        return em.find(Filme.class, Filme);
    
}
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
}
