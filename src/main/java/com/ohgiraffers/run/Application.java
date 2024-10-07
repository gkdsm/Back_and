package com.ohgiraffers.run;

import com.ohgiraffers.model.dao.CommodityDAO;
import com.ohgiraffers.model.dto.CommodityDTO;

import java.sql.Connection;
import java.util.List;
import java.util.Scanner;

import static com.ohgiraffers.common.JDBCTemplate.getConnection;

public class Application {

    public static void main(String[] args) {

        /* 1. 상품 전체 목록 조회 */
        Connection con = getConnection();
        CommodityDAO commodityDAO = new CommodityDAO();

        List<CommodityDTO> codList = commodityDAO.selectAllCommodity(con);

        /* 전체 조회 잘 불러오는지 확인 */
        for(CommodityDTO cod : codList) {
            System.out.println("주얼리 가게 = " + cod);
        }

       /* 2. 신규 메뉴 등록 */
       /* 2-1. 신규 주얼리 등록을 위한 정보 입력 */
        System.out.println();

        Scanner sc = new Scanner(System.in);
        System.out.print("신규로 등록할 주얼리 이름을 입력해주세요 : ");
        String commodityTitle = sc.nextLine();
        System.out.print("신규로 등록할 주얼리 가격을 입력해주세요 : ");
        int salePrice = sc.nextInt();
        System.out.print("신규로 등록할 주얼리의 카테고리를 입력하세요(목걸이, 귀걸이, 반지, 시계, 팔찌 : ");
        sc.nextLine();
        String commodityType = sc.nextLine();
        System.out.print("신규로 등록할 판매 여부를 결정해주세요(예/아니요) : ");
        String answer = sc.nextLine();
//
//
//
//        int commodityTypeCode = 0;
//        switch (commodityType) {
//            case "목걸이" : commodityTypeCode = 1; break;
//            case "귀걸이" : commodityTypeCode = 2; break;
//            case "반지" : commodityTypeCode = 3; break;
//            case "시계" : commodityTypeCode = 4; break;
//            case "팔찌" : commodityTypeCode = 5; break;
//        }
//
//        String orderableStatus = "";
//        switch (answer) {
//            case "예" : orderableStatus = "Y"; break;
//            case "아니오" : orderableStatus = "N"; break;
//        }
//
//
//        CommodityDTO newCommodity = new CommodityDTO(commodityCode, commodityTitle, saleDate, salePrice);
//
//        int result = commodityDAO.insertCommodity(con, newCommodity);
//
//        if(result > 0) {
//            System.out.println("신규 메뉴 등록 성공!");
//        } else {
//            System.out.println("신규 메뉴 등록 실패!");
//        }

    }

}
