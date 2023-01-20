package shop.mtcoding.buyer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.buyer.model.ProductRepository;
import shop.mtcoding.buyer.model.PurchaseRepository;
import shop.mtcoding.buyer.model.User;
import shop.mtcoding.buyer.service.PurchaseService;

@Controller
public class PurchaseController {

    @Autowired // DI
    private HttpSession session;

    @Autowired
    private PurchaseRepository purchaseRepository;

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private PurchaseService purchaseService;

    /*
     * 목적 : 세션이 있는지 체크, 구매 히스토리 남기기, 재고 수량 변경
     */
    @PostMapping("/purchase/insert")
    public String insert(int productId, int count) {
        // 1. 세션이 있는지 체크
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }
        // 2-2. 서비스 호출
        int result = purchaseService.구매하기(principal.getId(), productId, count);
        if (result == -1) { // IO관리가 중요하다.
            return "redirect:/notfound";
        }
        // 서비스레이어의 목적은 트랜잭션관리 무조건 서비스를 호출할 필요는 없다.
        // 서비스 여러가지 기능이 묶여있는 최소한의 기능

        return "redirect:/";

    }

    // 1,2,3,4 를 묶어서 비지니스 로직이라고 부른다, 트랜잭션 관리가 되어야 한다.
}
