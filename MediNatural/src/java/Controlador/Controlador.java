package Controlador;

import Model.Persona;
import Model.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    PersonaDAO dao = new PersonaDAO();
    Persona persona = new Persona();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        switch (accion) {
            case "Listar usuarios":
                List<Persona> datos = dao.listar();
                request.setAttribute("datos", datos);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
                
            case "Crear nuevo usuario":
                request.getRequestDispatcher("add.jsp").forward(request, response);
                break;
                
            case "Guardar usuario":
                persona.setId(request.getParameter("textId"));
                persona.setNombre(request.getParameter("textNombre"));
                persona.setTipo(request.getParameter("textTipo"));
                persona.setCorreo(request.getParameter("textCorreo"));
                dao.agregar(persona);
                request.getRequestDispatcher("Controlador?accion=Listar usuarios").forward(request, response);
                break;
                
            case "Editar usuario":
                persona = dao.listarPorId(request.getParameter("id"));
                request.setAttribute("persona", persona);
                request.getRequestDispatcher("edit.jsp").forward(request, response);
                break;
                
            case "Actualizar usuario":
                persona.setId(request.getParameter("textId"));
                persona.setNombre(request.getParameter("textNombre"));
                persona.setTipo(request.getParameter("textTipo"));
                persona.setCorreo(request.getParameter("textCorreo"));
                dao.actualizar(persona);
                request.getRequestDispatcher("Controlador?accion=Listar usuarios").forward(request, response);
                break;
            case "Eliminar usuario":
                dao.eliminar(request.getParameter("id"));
                request.getRequestDispatcher("Controlador?accion=Listar usuarios").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
