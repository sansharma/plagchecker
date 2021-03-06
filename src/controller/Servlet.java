package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

/**
 * Created by l on 12/4/2016.
 */
public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
                    ServletContext context=getServletContext();
                    String filename1=(String)context.getAttribute("FileName1");
                    String filename2=(String)context.getAttribute("FileName2");
            Scanner scanner1 = new Scanner( new File("D:/Softwares/"+filename1));
            String text1 = scanner1.useDelimiter("\\A").next();

            Scanner scanner = new Scanner( new File("D:/Softwares/"+filename2));
            String text2 = scanner.useDelimiter("\\A").next();

            double similarity = new WordProcessor().getSimilarity(text1,text2);

            //System.out.println("Cosine similarity of Two Contents are: "+similarity);
            PrintWriter out = response.getWriter();

        out.println("Your file is"+ similarity +" equivalent to next file.: ");
            request.setAttribute("msg", "Plagiarism detected!");
            request.setAttribute("similarity",similarity);

        RequestDispatcher rd = request.getRequestDispatcher("output.jsp");
        rd.forward(request,response);

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
