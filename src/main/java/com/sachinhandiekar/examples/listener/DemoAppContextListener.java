package com.sachinhandiekar.examples.listener;


import com.sachinhandiekar.examples.Constants;
import org.jinstagram.auth.InstagramAuthService;
import org.jinstagram.auth.oauth.InstagramService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DemoAppContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent sce) {

        String clientId = "bd93c391803345e8add91979526fd3c4" ;
        String clientSecret = "a87016ce661b47b6b690056f8770e906";
        String callbackUrl = "https://sevendc.herokuapp.com/handleInstagramToken";


        InstagramService service = new InstagramAuthService()
                .apiKey(clientId)
                .apiSecret(clientSecret)
                .callback(callbackUrl)
                .build();

        sce.getServletContext().setAttribute(Constants.INSTAGRAM_SERVICE, service);

    }

    public void contextDestroyed(ServletContextEvent sce) {

        sce.getServletContext().removeAttribute(Constants.INSTAGRAM_SERVICE);

    }


}