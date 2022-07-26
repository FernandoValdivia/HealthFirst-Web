package com.essentials.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.essentials.demo.models.entity.Compras;
import com.essentials.demo.models.entity.Order;
import com.essentials.demo.models.service.ICompraService;
import com.essentials.demo.models.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class PaypalController {

	@Autowired
	PaypalService paypalService;
	
	@Autowired
	private ICompraService compraService;

	public static final String SUCCESS_URL = "private/success";
	public static final String CANCEL_URL = "private/cancel";
	
	@PostMapping("/private/paypal")
	public String payment(@ModelAttribute("order") Order order, @Validated Compras com) {
		try {
			Payment payment = paypalService.createPayment(order.getPrice(), order.getCurrency(), order.getMethod(), 
					order.getIntent(), order.getDescription(), "https://health-f.herokuapp.com/" + CANCEL_URL, "https://health-f.herokuapp.com/" + SUCCESS_URL);
			for(Links link:payment.getLinks()) {
				if(link.getRel().equals("approval_url")) {
					compraService.save(com);
					return "redirect:"+link.getHref();
				}
			}
		} catch (PayPalRESTException e) {
			e.printStackTrace();
		}
		return "redirect:/private/paypal";
	}
	
	@GetMapping(value = CANCEL_URL)
	public String cancelPay() {
		return "cancel";
	}
	
	@GetMapping(value = SUCCESS_URL)
	public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			System.out.println(payment.toJSON());
			if (payment.getState().equals("approved")) {
				return "success";
			}
		} catch (PayPalRESTException e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/private/paypal";
	}
}
