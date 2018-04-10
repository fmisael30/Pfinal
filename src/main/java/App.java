import static spark.Spark.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

public class App {
	public static ArrayList<Discs> uploads = new ArrayList<>();
	public static boolean hasReadDBCookie = false;
    public static void main(String[] args) {
    Gson gson = new Gson();
    Logger log = LoggerFactory.getLogger(App.class); 
       staticFiles.location("/public");
    	
//--- Cookies
       before((req, res) -> {
   		if (!hasReadDBCookie) {
   			@SuppressWarnings("deprecation")
   			String cookie = req.cookie("ajax");
   			if (cookie != null) {
       			String cookieValue = java.net.URLDecoder.decode(cookie);
       			uploads = gson.fromJson(cookieValue, uploads.getClass());
       			hasReadDBCookie = true;	
   			}
   		}
   	});
       
//--- Home
       get("/home", (req, res)-> {
    	  res.status(200);
    	  Map<String, Object> home = new HashMap<>();
    	  return new ModelAndView(home, "upload.ftl");
       }, new FreeMarkerEngine());
       
//--- UPload      
       get("/upload", (req, res) -> {
    	   res.redirect("upload.ftl");
   		res.header("content-type", "application/json");
   		return uploads;
   	}, gson::toJson);
       
       get("/usong", (req, res) -> {
   		Discs usong = new Discs("Usong", "Misael & Jamil", "2018", "RD");
   		
   		// Artista +x
   		Artist mg = new Artist("Martin Garrix", 1996);
   		mg.getOcupation().add("Producer, DJ");
   		// AGREGANDO ARTISTA AL DISCO
   		usong.getArtists().add(mg);
   		// CANCION
   		Songs mx = new Songs("Martin Garrix", "Forever");
   		mx.getYear().add("2018");

   		//Artista Don Diablo
   		Artist pop = new Artist("Don Diablo", 1989);
   		pop.getOcupation().add("Producer, Dj");
   		
   		Songs popo = new Songs("Don Diablo", "Future");
   		popo.getYear().add("2017"); 
   		
   		// AGREGANDO ARTISTA AL DISCO
   		usong.getArtists().add(pop);
   		
   		// AGREGANDO CANCIONES AL DISCO
   		usong.getSongs().add(mx);
   		usong.getSongs().add(popo);
   		
		// GENEROS
		usong.getGenres().add("House Music");
		usong.getGenres().add("Dance Music");
   			
   		// HEADERS:
   		res.header("content-type", "application/json");
   		
   		String shouldAdd = req.queryParamOrDefault("add", "false");
   		Logger sh = LoggerFactory.getLogger(App.class);
   		sh.info(shouldAdd);
   		if (shouldAdd.equals("true")) {
       		uploads.add(usong);
       		@SuppressWarnings("deprecation")
   			String cookieValue = java.net.URLEncoder.encode(gson.toJson(uploads));
       		res.cookie("ajax", cookieValue);
   		}
   		return usong;
   		
   	}, gson::toJson);
   	
       
//--- My Uploads

       get("/my-uploads", (req, res)-> {
    	  res.status(200);
    	  Map<String, Object> my = new HashMap<>();
    	  return new ModelAndView(my, "my_upload.ftl");
       }, new FreeMarkerEngine());
       
       
//--- Sign Up    
       get("/sign-up", (req, res)-> {
    	   res.status(200);
    	   Map<String, Object> model = new HashMap<>();
    	   ArrayList<SignUp> lista1 = req.session().attribute("usuarios");
    	   return new ModelAndView(model, "sign_up.ftl");
       }, new FreeMarkerEngine());
      
       post("/sign-up", (req, res) ->{ 
    	   	res.status(200);
    	   	String name = req.queryParams("name");
    	   	String email = req.queryParams("email");
    	   	String password = req.queryParams("password");
    	   	String birth = req.queryParams("birth");
    	    Map<String, Object> model = new HashMap<>();
    	    
    	   	SignUp user = new SignUp(name, email, password, birth);
           	ArrayList<SignUp> lista1 = req.session().attribute("usuarios");
           	
           	if (lista1 == null) { // Si el usuario1 NO existe, lo agregamos:
           		lista1 = new ArrayList<SignUp>();
           	} 
           	lista1.add(user);
           	req.session().attribute("usuarios",lista1);

           	req.session().attribute("user",user);
	     	   
    	   return new ModelAndView(model, "login.ftl");
       }, new FreeMarkerEngine());
       
       
//--- Login       
       get("/login", (req, res)-> {
    	  res.status(200);
    	  Map<String, Object> logged = new HashMap<>();
    	  return new ModelAndView(logged, "login.ftl");
       }, new FreeMarkerEngine());
       
       post("/login", (req, res)-> {
    	   res.status(200);
    	   String email = req.queryParams("email");
   	   	   String password = req.queryParams("password");    	   
    	   Map<String, Object> logged = new HashMap<>();
    	   logged.put("user", email);
    	   logged.put("pass", password);
    	    
    	   ArrayList<SignUp> lista1 = req.session().attribute("usuarios");
    	   if(lista1 == null) {
    		   return new ModelAndView(logged, "login.ftl");
    	   }
    	   else {
    		   return new ModelAndView(logged, "home.ftl");
    	   }
    	   
       }, new FreeMarkerEngine());
       
       

       
    }
}