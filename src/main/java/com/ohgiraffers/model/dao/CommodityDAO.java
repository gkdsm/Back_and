package com.ohgiraffers.model.dao;

import com.ohgiraffers.model.dto.CommodityDTO;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static com.ohgiraffers.common.JDBCTemplate.close;

public class CommodityDAO {

    private Properties prop = new Properties();

    public CommodityDAO() {
        try {
            prop.loadFromXML(new FileInputStream("src/main/java/com/ohgiraffers/mapper/commodity-query.xml"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public List<CommodityDTO> selectAllCommodity(Connection con) {

        Statement stmt = null;
        ResultSet rset = null;

        CommodityDTO row = null;

        List<CommodityDTO> codlist = null;

        String query = prop.getProperty("selectAllCommodity");

        try {
            stmt = con.createStatement();
            rset = stmt.executeQuery(query);

            codlist = new ArrayList<>();

            while (rset.next()) {

                row = new CommodityDTO();

                row.setCommodityCode(rset.getInt("COMMODITY_CODE"));
                row.setCommodityTitle(rset.getString("COMMODITY_TITLE"));
                row.setCommodityTypeCode(rset.getInt("COMMODITY_TYPE_CODE"));
                row.setSaleDate(rset.getDate("SALE_DATE"));
                row.setSalePrice(rset.getInt("SALE_PRICE"));


                codlist.add(row);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            close(rset);
            close(stmt);
            close(con);
        }
        return codlist;

    }

    public int insertCommodity(Connection con, CommodityDTO newCommodity) {

        PreparedStatement pstmt = null;

        int result = 0;

        String query = prop.getProperty("insertCommodity");

        try {
            pstmt = con.prepareStatement(query);
            pstmt.setInt(1, newCommodity.getCommodityCode());
            pstmt.setString(2, newCommodity.getCommodityTitle());
            pstmt.setInt(3, newCommodity.getCommodityTypeCode());
            pstmt.setDate(4, newCommodity.getSaleDate());
            pstmt.setInt(5, newCommodity.getSalePrice());

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            close(pstmt);
        }

        return result;
    }
}
