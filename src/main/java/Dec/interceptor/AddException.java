package Dec.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author this
 * @date 2021年12月19日 14:08
 */
public class AddException implements HandlerInterceptor {

    /*
    预处理
     */
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.out.println("拦截器预处理");

        return true;
    }

    /*
    后处理的方法,Controller后,success.jsp前
     */
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        System.out.println("拦截器中途处理");


//        request.getRequestDispatcher("/WEB-INF/pages/error.jsp").forward(request, response);

    }

    /*
    最后执行,success页面后
     */
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("拦截器最终处理");
    }

}
