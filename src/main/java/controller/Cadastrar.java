package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.Mercadoria;

@WebServlet(urlPatterns="/register")
public class Cadastrar extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
        try{
            req.setCharacterEncoding("UTF-8"); 
        }catch(Exception e){}

        try{
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");  // persistencia_simples eh a referencia criada no persistence.xml   
            EntityManager em = emf.createEntityManager();

	        /* Insert with JPA */

	        if (req.getParameter("button_cadastrar") != null) {

	            try {
	            	ServletContext sc = req.getServletContext();
	    	        try {
	    	            sc.getRequestDispatcher("/jsp/cadastrar.jsp").forward(req, resp); 
	    	        }catch(Exception e){}

	            	Mercadoria cadProduto = new Mercadoria();

				    String box1=req.getParameter("nomeProduto"); //Print value what you will provide
				    String box2=req.getParameter("marca");
				    String box3=req.getParameter("un_embalagem");
				    String aux=req.getParameter("qtde_unitaria");
				    double box4=Double.parseDouble(aux);
				    String box5=req.getParameter("un_medida");
				    aux=req.getParameter("preco_unitario");
				    double box6=Double.parseDouble(aux);
				    aux=req.getParameter("qtde_estoque");
				    int box7=Integer.parseInt(aux);

			        
			        cadProduto.setNome(box1);
			        cadProduto.setMarca(box2);
			        cadProduto.setUn_emb(box3);
			        cadProduto.setQtde_unit(box4);
			        cadProduto.setUn_medida(box5);
			        cadProduto.setPreco_unit(box6);
			        cadProduto.setQtde_estoque(box7);

			        em.getTransaction().begin();
		            em.merge(cadProduto);
		            em.getTransaction().commit();
	            } catch (Exception e) {
	            	em.getTransaction().rollback();
	            } finally {
					em.close();
					emf.close();
				}
			}

			/* Delete with JPA */
	        else if (req.getParameter("button_deletar") != null) {

	            try {
	            	ServletContext sc = req.getServletContext();
	    	        try {
	    	            sc.getRequestDispatcher("/jsp/cadastrar.jsp").forward(req, resp); 
	    	        }catch(Exception e){}

	            	Mercadoria delProduto = new Mercadoria();

	            	String aux=req.getParameter("deleta_produto");
	            	long box8=Long.parseLong(aux);
	            	System.out.println("\n\n\n" + box8 + "\n\n\n");
	            	delProduto = em.find(Mercadoria.class, box8);
			        em.getTransaction().begin();
			        em.remove(delProduto);
			        em.getTransaction().commit();

	            } catch (Exception e) {
	            	em.getTransaction().rollback();
	            } finally {
					em.close();
					emf.close();
				}
			}
	
	        ServletContext sc = req.getServletContext();
	        try {
	            sc.getRequestDispatcher("/jsp/cadastrar.jsp").forward(req, resp); 
	        }catch(Exception e){}    
	
        }catch(Exception e){
            System.out.println("Erro em 10 ou Servlet!\n" + e.toString());
        }                       
    }
}