package org.example.exercice3j2ee;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.example.exercice3j2ee.entity.Personne;

@WebServlet(name = "personneServlet", value = "/personne-servlet")
public class PersonneServlet extends HttpServlet {

    private List<Personne> personneList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        personneList.add(new Personne("Pierre", "Dupont", 20));
        personneList.add(new Personne("Paul", "Dupont", 23));
        personneList.add(new Personne("Jacques", "Dupont", 26));
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setAttribute("personneList", personneList);
        getServletContext().getRequestDispatcher("/exercice.jsp").forward(req, res);
    }

}