Instagram Profiler
===================


A basic web application written on Java. Shows profile information and media content. 
Using jInstagram Java library.
Based on: https://github.com/sachin-handiekar/jInstagram-examples
Demo: https://sevendc.herokuapp.com/
1. Import the maven project in your favourite IDE.
2. Change the following lines in DemoAppContextListener.java (src/main/java/com/sachinhandiekar/examples/listener/)

```java
        String clientId = System.getenv(Constants.CLIENT_ID);
        String clientSecret = System.getenv(Constants.CLIENT_SECRET);
        String callbackUrl = System.getenv(Constants.REDIRECT_URI);
```

to

```java
        String clientId = "Your Client ID"
        String clientSecret = "Your Client Secret";
        String callbackUrl = "Your callback URL";
```
