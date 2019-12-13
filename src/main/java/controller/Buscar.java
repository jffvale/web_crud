package controller;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import model.Mercadoria;

@WebServlet(urlPatterns="/search1")
public class Buscar extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException{
        try{
            req.setCharacterEncoding("UTF-8"); 
        }catch(Exception e){}

        try{
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");     
            EntityManager em = emf.createEntityManager();

        /* Utilizando JPQL*/
        Query query = em.createQuery("SELECT m FROM mercadoria m "); // WHERE m.nome='Macarrão' ");
        List<Mercadoria> Mercadorias = query.getResultList();
        System.out.println("Resultados: ");
        for(Mercadoria mi: Mercadorias){
            System.out.println("Nome: " + mi.getNome() + "  Id: " + mi.getId() +
                 "  Unid/embalagem: " + mi.getUn_emb() + "  Qtde/Unid: " +
                  mi.getQtde_unit() + mi.getUn_medida() + "  Preço Unitário: R$" +
                  mi.getPreco_unit());
        }

        em.close();
        emf.close();
        req.setAttribute("mercadoria", Mercadorias);

        ServletContext sc = req.getServletContext();
        try {
            sc.getRequestDispatcher("/jsp/buscar.jsp").forward(req, resp); 
        }catch(Exception e){}    

        }catch(Exception e){
            System.out.println("Erro em 10 ou Servlet!\n" + e.toString());
        }                       
    }
}