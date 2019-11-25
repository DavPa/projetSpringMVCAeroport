package projetSpringMVCAeroport.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jpa.model.Vol;
import jpa.repository.VolRepository;

@Controller
@RequestMapping("/vol")
public class VolController {
	
	@Autowired
	VolRepository volRepository;
	
	@GetMapping("/listVol")
	public String volList(Model model) {
		model.addAttribute("vols", volRepository.findAll());
		return "vol/listVol";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id", required = true) Long id, Model model) {
		volRepository.deleteById(id);
		return "redirect:/vol/listVol";
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam(name = "id", required = true) Long id, Model model) {
		Optional<Vol> opt = volRepository.findById(id);
		Vol p = null;
		if (opt.isPresent()) {
			p = opt.get();
		} else {
			p = new Vol();
		}
		return goEdit(p, model);
	}
	
	private String goEdit(Vol p, Model model) {
		model.addAttribute("vol", p);
		return "vol/edit";
	}
	
	@GetMapping("/addVol")
	public String addVol(Model model) {
		return goEdit(new Vol(), model);
	}
	
	@GetMapping("/save")
	public String save(@ModelAttribute("vol")Vol vol) {
		volRepository.save(vol);
		return "redirect:/vol/listVol";
	}
	
}
