package ca.sait.calculator.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ArithmeticCalculatorServlet extends HttpServlet {


  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("message", "---"); 
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
           
       String valueOne = request.getParameter("valueOne");
       String valueTwo = request.getParameter("valueTwo");
      
       if(valueOne !="" && valueTwo !="" ){
       try{   
             
               int numOne =Integer.parseInt(valueOne);
               int numTwo =Integer.parseInt(valueTwo);
               int result = 0;
               
                if(request.getParameter("add") !=null){
                    result = numOne + numTwo;

                }
                else if(request.getParameter("subtract") !=null){
                result = numOne - numTwo;
                }
                else if(request.getParameter("multiply") !=null){
                result = numOne * numTwo;
                }
                else if(request.getParameter("divide") !=null){
                result = numOne / numTwo;
                }
                 request.setAttribute("message", result);
       }
           catch(Exception Ex){
               request.setAttribute("message", "Invalid");
            }
       }else{
                        
                   }
           getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
       }
    }

