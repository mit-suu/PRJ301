package controller;

import dto.DataRespone;
import dto.Result;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "CalServlet", urlPatterns = {"/CalServlet"})
public class CalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String a_raw=request.getParameter("a");
        String b_raw=request.getParameter("b");
        String c_raw=request.getParameter("c");
        
        try {
            int a=Integer.parseInt(a_raw);
            int b=Integer.parseInt(b_raw);
            int c=Integer.parseInt(c_raw);
            Result rs =solveQuadraticEquation(a,b,c);
            String msg=convertMessage(rs.getFlag());
            DataRespone <Result> resp=new DataRespone(rs,msg);
            request.setAttribute("data", resp);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
        } catch (Exception e) {
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    //ham co nghiem rieng biet 2
    //ham co nghiem kep so 1
    //ham vo nghiem so 0
public String convertMessage(int msgCode){
    String msg="";
    switch (msgCode) {
        case 1 -> msg="ham co nghiem kep";
        case 2 -> msg="ham co 2 nghiem";
        case 3 -> msg="ham co 1 nghiem";
        case 0 -> msg="ham vo nghiem";
        case 99 -> msg="ham vo so nghiem";
    }
    return msg;
}
    
    public Result solveQuadraticEquation(double a, double b, double c) {     
        Result rs=new Result(0, 0, 0);
        if (a == 0) {
    if (b == 0) {
        if (c == 0) rs.setFlag(99);
        else rs.setFlag(0);
    } else {
        double x = -c / b;
        rs.setFlag(3);
        rs.setX1(x);
    }
    return rs; 
}
        double delta = b * b - 4 * a * c;
        if (delta > 0) {
            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
            rs.setFlag(2);
            rs.setX1(x1);
            rs.setX2(x2);
        } else if (delta == 0) {
            double x = -b / (2 * a);
            rs.setFlag(1);
            rs.setX1(x);
            System.out.println("Phương trình có nghiệm kép: x = " + x);
        } else {
            rs.setFlag(0);
        }     return rs;
    }  
}




