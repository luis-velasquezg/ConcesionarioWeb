/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.ClienteFacadeLocal;
import com.udea.entity.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luis
 */
public class ConcesionarioServlet extends HttpServlet {

    @EJB
    private ClienteFacadeLocal clienteFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter printer = response.getWriter();
        
        try {
            String action = request.getParameter("action");
            System.out.println("action: " + action);
            String url = "index.jsp";
            //Cliente cliente;
            
            if (action != null) switch (action) {
                case "iniciarSesion": 
                    int identificacion = Integer.valueOf(request.getParameter("id"));
                    String contrasenna = request.getParameter("contrasenna");
                    boolean sesionValida = clienteFacade.checkLogin(identificacion, contrasenna);
                    if (sesionValida) {
                        Cliente cliente = clienteFacade.find(identificacion);
                        request.getSession().setAttribute("cliente", cliente.getNombres());
                        url = "index.jsp";
                    } else {
                        url = "inicioSesion.jsp?error=1";
                    }
                    break;
                    
                case "insertarCliente": {
                    Cliente cliente = new Cliente();
                    cliente.setId(Integer.parseInt(request.getParameter("id")));
                    cliente.setNombres(request.getParameter("nombres"));
                    cliente.setApellidos(request.getParameter("apellidos"));
                    cliente.setEmail(request.getParameter("email"));
                    cliente.setContrasenna(request.getParameter("contrasenna"));
                    cliente.setRol("regular");
                    clienteFacade.create(cliente);
                    url = "inicioSesion.jsp";
                    break;
                }
                    
                case "eliminarCliente":
                    String id = request.getParameter("id");
                    Cliente cliente = clienteFacade.find(Integer.valueOf(id));
                    clienteFacade.remove(cliente);
                    url = "ConcesionarioServlet?action=listarClientes";
                    break;
                    
                case "listarClientes":
                    List<Cliente> clientes = clienteFacade.findAll();
                    request.getSession().setAttribute("clientes", clientes);
                    url = "listadoClientes.jsp";
                    break;
                    
                case "cerrarSesion":
                    request.getSession().removeAttribute("cliente");
                    url = "inicioSesion.jsp";
                    break;
                    
                default:
                    break;
            }       
            
            response.sendRedirect(url);
            
        } finally {
            printer.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
