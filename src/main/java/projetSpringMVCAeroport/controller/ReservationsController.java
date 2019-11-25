package projetSpringMVCAeroport.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jpa.model.Reservations;
import jpa.repository.ReservationRepository;

@Controller
@RequestMapping("/reservations")
public class ReservationsController {

	@Autowired
	private ReservationRepository reservationRepository;

	@GetMapping("/listReservations")
	// méthode pour lister les réservations qu'il y a dans la base
	public String list(Model model) {
		model.addAttribute("reservationss", reservationRepository.findAll());
		return "reservations/listReservations";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id", required = true) Long id) {
		reservationRepository.deleteById(id);
		return "redirect:/reservations/listReservations";
	}

	@GetMapping("/edit")
	public String edit(@RequestParam(name = "id", required = true) Long id, Model model) {
		Optional<Reservations> opt = reservationRepository.findById(id);
		Reservations r = null;
		if (opt.isPresent()) {
			r = opt.get();
		} else {
			r = new Reservations();
		}
		return goEdit(r, model);
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("reservation") Reservations reservation) {
		reservationRepository.save(reservation);
		return "redirect:/reservations/listReservations";
	}

	private String goEdit(Reservations reservation, Model model) {
		model.addAttribute("reservation", reservation);
		// model.addAttribute("salles", salleRepository.findAll());
		return "reservations/editReservations";
	}

	@GetMapping("/addReservation")
	public String addReservation(Model model) {
		return goEdit(new Reservations(), model);
	}

}
