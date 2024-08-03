package com.example.servlet;

import com.example.model.inventoryItem;
import com.example.model.DatabaseUtils;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/inventoryServlet")
public class inventoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<inventoryItem> inventoryItems = new ArrayList<>();

        try (Connection conn = DatabaseUtils.getConnection()) {
            String query = "SELECT product_id, product_name, category, stock_quantity FROM inventory";
            try (PreparedStatement ps = conn.prepareStatement(query);
                 ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {
                    inventoryItem item = new inventoryItem();
                    item.setProductId(rs.getInt("product_id"));
                    item.setProductName(rs.getString("product_name"));
                    item.setCategory(rs.getString("category"));
                    item.setStockQuantity(rs.getInt("stock_quantity"));
                    inventoryItems.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("inventoryItems", inventoryItems);
        request.getRequestDispatcher("inventoryManagement.jsp").forward(request, response);
    }
}
