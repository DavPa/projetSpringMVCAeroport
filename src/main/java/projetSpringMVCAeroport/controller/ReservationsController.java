package projetSpringMVCAeroport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

//	@GetMapping("/delete")
//	public String delete(@RequestParam(name = "id", required = true) Integer id) {
//		personneRepository.deleteById(id);
//		return "redirect:/personne/list";
//	}
//
//	@GetMapping("/edit")
//	public String edit(@RequestParam(name = "id", required = true) Integer id, Model model) {
//		Optional<Personne> opt = personneRepository.findById(id);
//		Personne p = null;
//		if (opt.isPresent()) {
//			p = opt.get();
//		} else {
//			p = new Stagiaire();
//		}
//		return goEdit(p, model);
//	}
//
//	@PostMapping("/saveFormateur")
//	public String saveFormateur(@Valid @ModelAttribute("personne") Formateur formateur, BindingResult br, Model model) {
//		return save(formateur, br, model);
//	}
//
//	@PostMapping("/saveStagiaire")
//	public String saveStagiaire(@Valid @ModelAttribute("personne") Stagiaire stagiaire, BindingResult br, Model model) {
//		return save(stagiaire, br, model);
//	}
//
//	public String save(Personne personne, BindingResult br, Model model) {
//		if (br.hasErrors()) {
//			return goEdit(personne, model);
//		}
//		if (personne.getSalle() != null && personne.getSalle().getId() == null) {
//			personne.setSalle(null);
//		}
//		personneRepository.save(personne);
//		return "redirect:/personne/list";
//	}
//
//	private String goEdit(Personne personne, Model model) {
//		model.addAttribute("personne", personne);
//		model.addAttribute("civilites", Civilite.values());
//		model.addAttribute("salles", salleRepository.findAll());
//		return "personne/edit";
//	}
//
//	@GetMapping("/addStagiaire")
//	public String addStagiaire(Model model) {
//		return goEdit(new Stagiaire(), model);
//	}
//
//	@GetMapping("/addFormateur")
//	public String addFormateur(Model model) {
//		return goEdit(new Formateur(), model);
//	}

}
