package com.kayasefamert.siparisotomasyon;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kayasefamert.entity.AcikMasa;
import com.kayasefamert.entity.Masa;
import com.kayasefamert.entity.Urunler;
import com.kayasefamert.service.AcikMasaService;
import com.kayasefamert.service.MasaService;
import com.kayasefamert.service.RezervService;
import com.kayasefamert.service.UrunService;
import com.mysql.cj.xdevapi.JsonArray;


@Controller
public class HomeController {
	


@Autowired
private AcikMasaService acikmasaService;

@Autowired
private UrunService urunService;

@Autowired
private MasaService masaService;



@ModelAttribute("urunA")
public Urunler construct() {
	return new Urunler();
}


@RequestMapping(value = "", method = RequestMethod.GET)
public String home2(Model model) {

	
	return "redirect:/servisac";
}


@RequestMapping(value = "/", method = RequestMethod.GET)
public String home1(Model model) {

	
	return "redirect:/servisac";
}
	@RequestMapping(value = "/servisac", method = RequestMethod.GET)
	public String home(Model model) {
	
		
		return "home";
	}
	

	@RequestMapping(value = "/urunekle", method = RequestMethod.GET)
	public String urunekle(Model model) {
	
		return "urunekle";
	}
	

	@RequestMapping(value = "/urunler", method = RequestMethod.GET)
	public String urunler(Model model) {
	
		model.addAttribute("urunler",urunService.getAll());
		
		return "urunler";
	}
	
	@RequestMapping(value = "/masaac", method = RequestMethod.POST)
	public ResponseEntity<String> masaac(@RequestBody AcikMasa acikMasa, HttpServletRequest request) {

			acikmasaService.create(acikMasa);
			return new ResponseEntity<>("OK", HttpStatus.CREATED);
			
	}
	
	@RequestMapping(value = "/acikmasalar", method = RequestMethod.GET)
	public String acikmasalar(Model model) {

			model.addAttribute("masalar",masaService.disnict());
			return "masalar";
			
	}
	
	@RequestMapping(value = "/siparisler", method = RequestMethod.GET)
	public String siparisler(Model model) {

			model.addAttribute("masalar",acikmasaService.getAll());
			return "masalarSiparis";
			
	}
	

	@RequestMapping(value = "/siparis/{id}", method = RequestMethod.GET)
	public String siparis(@PathVariable("id") Long id, HttpServletRequest request,Model model) {

		model.addAttribute("id",id);
		model.addAttribute("urunler",urunService.getAll());
		
			return "siparis";
			
	}
	
	@RequestMapping(value = "/hesap/{id}", method = RequestMethod.GET)
	public String hesap(@PathVariable("id") Long masaNo, HttpServletRequest request,Model model) {

	

		model.addAttribute("id",masaNo);
		model.addAttribute("masa",masaService.getHesap(masaNo));
		model.addAttribute("para",masaService.getFatura(masaNo));
		
			return "hesap";
		

		
	}
	
	
	
	@RequestMapping(value = "/urunEkle", method = RequestMethod.POST)
	public ResponseEntity<String> urunEkle(@RequestBody Urunler urun, HttpServletRequest request) {

			urunService.urunEkle(urun);
			return new ResponseEntity<>("OK", HttpStatus.CREATED);
			
	}
	
	@RequestMapping(value = "/uruns", method = RequestMethod.POST)
	public ResponseEntity<Urunler> urun(@RequestBody Urunler urun, HttpServletRequest request) {

		return new ResponseEntity<>(urunService.getFindById(urun.getUrunId()), HttpStatus.CREATED);
		
}
	
	@RequestMapping(value = "/kaydet", method = RequestMethod.POST)
	public ResponseEntity<String> kaydet(@RequestBody Masa masa,HttpServletRequest request) {

		
		Urunler urun=urunService.getFindById(masa.getUrunId());
		
		masa.setFiyat(urun.getFiyat());
		masa.setSiparis(urun.getUrunAdi());
		
		
		masaService.masaAc(masa);
		
		
		return new ResponseEntity<>("OK",HttpStatus.CREATED);
		
}
	@RequestMapping(value = "/fiyatguncelle", method = RequestMethod.POST)
	public String fiyatguncelle(@RequestParam("value") String id,@ModelAttribute("urunA") Urunler urun, HttpServletRequest request) {


		
		Urunler urunD=urunService.getFindById(Long.parseLong(id));
		
		urunD.setFiyat(urun.getFiyat());
		
		urunService.urunUpdate(urunD);
		
		
		return "redirect:/urunler";
		
}
	
	@RequestMapping(value = "/urunSil", method = RequestMethod.POST)
	public ResponseEntity<String> urunSil(@RequestBody Urunler urun, HttpServletRequest request) {

		
	Urunler urunS=urunService.getFindById(urun.getUrunId());
	urunService.urunDelete(urunS);
	
	
	return new ResponseEntity<> ("OK",HttpStatus.OK);
}
	
	
	
	
}
