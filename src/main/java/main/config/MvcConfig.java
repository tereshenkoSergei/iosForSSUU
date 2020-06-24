package main.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//ok
@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")
    private String uploadPath;

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
 /*       registry.addResourceHandler("/css/**")
                .addResourceLocations( "C:/IOS/src/main/resources/static/css" );
*/

        registry.addResourceHandler("/css/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/css/" );

        registry.addResourceHandler("/videos/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/videos/" );

        registry.addResourceHandler("/fonts/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/fonts/" );

        registry.addResourceHandler("/js/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/js/" );

        registry.addResourceHandler("/img/**")
                .addResourceLocations( "file:///" + uploadPath + "/" );

        registry.addResourceHandler("/images/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/images/" );
        registry.addResourceHandler("/images2/**")
                .addResourceLocations( "file:///C:/IOS/src/main/resources/static/images2/" );

        registry.addResourceHandler("/static/**")
                    .addResourceLocations("classpath:/static/");

    }
}