package com.demo;

import org.apache.jena.query.*;
import org.apache.jena.rdf.model.Model;
import org.apache.jena.riot.RDFDataMgr;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "KGServlet", urlPatterns="/kgServlet")
public class KGServlet extends HttpServlet {

    // load the ontology in rdf model.
    Model model = RDFDataMgr.loadModel("newcopyinrdfxml.owl");

    //create basic select query.
    String q
            = "PREFIX rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n"
            + "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n"
            + "PREFIX machine_learning_ontology: <http://www.semanticweb.org/pandi/ontologies/2020/7/machine_learning_ontology#>\n\n"
            + "SELECT ?s WHERE {\n"
            + "?s machine_learning_ontology:hasTaskDescription ?x  \n"
            +"}\n";


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //get parameter from user input form.
        String taskDescr = req.getParameter("task_descr");
        String accuracyvalue = req.getParameter("accuracy_spec");

        //print the query on standard output for testing.
        q = String.format(q, taskDescr);
        System.out.println(q);

        //prepare select query for execution
        Query query1 = QueryFactory.create(q);
        QueryExecution qexec = QueryExecutionFactory.create(query1, model);
        ResultSet resSet = qexec.execSelect();

        //create content writer for result
        PrintWriter writer = resp.getWriter();
        StringBuilder htmlResponse = new StringBuilder("<html>");
        String strg = null;

        resp.setContentType("text/html");

        while (resSet.hasNext()) {
            QuerySolution soln = resSet.nextSolution();
            strg = soln.getResource("?s").toString();
            System.out.println("here");
            System.out.println(">>>>>>> " + strg);
            req.setAttribute("resultvalue", strg);

            htmlResponse.append("<h2>Your query result is: ").append(strg).append("<br/>").append("</h2>");
        }
        qexec.close();

        writer.println(htmlResponse);

    }//end dopost
}//end servlet
