package org.outman.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.outman.dao.EquipmentDao;
import org.outman.domain.Equipment;

public class EquipmentServlet extends HttpServlet {
    private EquipmentDao equimentDao = new EquipmentDao();

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            System.out.println(request.getRequestURI());
            String option = request.getParameter("option");
            if ("list".equals(option)) {
                list(request, response);
            } else if ("add".equals(option)) {
                add(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    private void list(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        List<Equipment> list = equimentDao.findAllEquipment();

        JSONArray jsonArry = JSONArray.fromObject(list);
        String jsonStr = jsonArry.toString();

        response.setContentType("text/plain;charset=utf-8");
        PrintWriter out = response.getWriter();

        out.print(jsonStr);
    }

    private void add(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        request.setCharacterEncoding("utf-8");
        String p1 = request.getParameter("model");
        String p2 = request.getParameter("name");
        String p3 = request.getParameter("number");
        String p4 = request.getParameter("price");
        if (p1 != null && p1.length() > 0 && p2 != null && p2.length() > 0
                && p3 != null && p3.length() > 0 && p4 != null
                && p4.length() > 0) {
            Equipment e = new Equipment();
            e.setModel(p1);
            e.setName(p2);
            e.setNumber(Integer.parseInt(p3));
            e.setPrice(Double.parseDouble(p4));

            equimentDao.addEquipment(e);

        }

    }
}
