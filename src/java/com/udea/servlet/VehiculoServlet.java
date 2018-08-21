/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.servlet;

import com.udea.ejb.VehiculoFacadeLocal;
import com.udea.entity.Vehiculo;
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
public class VehiculoServlet extends HttpServlet {

    @EJB
    private VehiculoFacadeLocal vehiculoFacade;

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
        PrintWriter out = response.getWriter();
        
        try {
            String action = request.getParameter("action");
            System.out.println("action (vehiculo): " + action);
            String url = "index.jsp";
            
            if (action != null) switch (action) {
                // **Vehiculos**
                case "insertarVehiculo":
                    break;
                    
                case "listarVehiculos":
                    List<Vehiculo> vehiculos = vehiculoFacade.findAll();
                    request.getSession().setAttribute("vehiculos", vehiculos);
                    url = "listadoVehiculos.jsp";
                    break;
                    
                case "detallesVehiculo":
//                    String matricula = request.getParameter("matricula");
//                    request.getSession().setAttribute("vehiculos", vehicu)
                    break;
                
                case "buscarMatricula":
                    String matricula = request.getParameter("matricula");
                    Vehiculo vehiculo = vehiculoFacade.find(matricula);
                    if (vehiculo != null) {
                        request.getSession().setAttribute("vehiculo", vehiculo);
                        url = "detallesVehiculo.jsp";
                    } else {
                        url = "detallesVehiculo.jsp?error=1";
                    }
                    break;
                
                default:
                    break;
            }
            
            response.sendRedirect(url);
            
        } finally {
            out.close();
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
