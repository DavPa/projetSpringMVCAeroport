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
import jpa.repository.PassagerRepository;
import jpa.repository.ReservationRepository;
import jpa.repository.VolRepository;

@Controller
@RequestMapping("/reservations")
public class ReservationsController {

	@Autowired
	private ReservationRepository reservationRepository;
	@Autowired
	private VolRepository volRepository;
	@Autowired
	private PassagerRepository passagerRepository;

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
		if (reservation.getPassager() != null && reservation.getPassager().getId() == null) {
			reservation.setPassager(null);
		}
		if (reservation.getVol() != null && reservation.getVol().getId() == null) {
			reservation.setVol(null);
		}
		reservationRepository.save(reservation);
		return "redirect:/reservations/listReservations";
	}

	private String goEdit(Reservations reservation, Model model) {
		model.addAttribute("reservation", reservation);
		model.addAttribute("vols", volRepository.findAll());
		model.addAttribute("passagers", passagerRepository.findAll());
		return "reservations/editReservations";
	}

	@GetMapping("/addReservation")
	public String addReservation(Model model) {
		return goEdit(new Reservations(), model);
	}

}
