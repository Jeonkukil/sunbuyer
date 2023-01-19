package shop.mtcoding.buyer.util;

import org.junit.jupiter.api.Test;

public class CookieTest {

    @Test
    public void parse_test() {
        String cookies = "remember=ssar; JSESSIONID=1";
        String arr[] = cookies.split(";");
        String username = arr[0].split("=")[1];
        System.out.println(arr[0]);
        System.out.println(arr[1]);
        System.out.println(username);
    }
}
