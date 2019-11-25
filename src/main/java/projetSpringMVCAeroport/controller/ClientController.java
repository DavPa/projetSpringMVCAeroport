package projetSpringMVCAeroport.controller;

<<<<<<< HEAD
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jpa.model.Client;
import jpa.model.ClientEI;
import jpa.model.ClientMoral;
import jpa.model.ClientPhysique;
import jpa.repository.ClientRepository;

@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	ClientRepository clientRepository;

	@GetMapping("/clientList")
	public String clientList(Model model) {
		model.addAttribute("clients", clientRepository.findAll());
		return "client/clientList";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id", required = true) Long id, Model model) {
		clientRepository.deleteById(id);
		return "redirect:/client/clientList";
	}

	@GetMapping("/edit")
	public String edit(@RequestParam(name = "id", required = true) Long id, Model model) {
		Optional<Client> opt = clientRepository.findById(id);
		Client c = null;
		if (opt.isPresent()) {
			c = opt.get();
		} else {
			c = new ClientPhysique();
		}
		return goEdit(c, model);
	}

	private String goEdit(Client client, Model model) {
		model.addAttribute("client", client);
		return "client/clientEdit";
	}

	@GetMapping("/addClientPhysique")
	public String addClientPysique(Model model) {
		return goEdit(new ClientPhysique(), model);
	}

	@GetMapping("/addClientMoral")
	public String addClientMoral(Model model) {
		return goEdit(new ClientMoral(), model);
	}
	
	@GetMapping("/addClientEI")
	public String addClientEI(Model model) {
		return goEdit(new ClientEI(), model);
	}
	
	@PostMapping("/saveClientPhysique")
	public String saveClientPhysique(@Valid@ModelAttribute("client") ClientPhysique clientPhysique, BindingResult br, Model model) {
		return save(clientPhysique, br, model);
	}
	
	@PostMapping("/saveClientMoral")
	public String saveClientMoral(@Valid@ModelAttribute("client") ClientMoral clientMoral, BindingResult br, Model model) {
		return save(clientMoral, br, model);
	}
	
	@PostMapping("/saveClientEI")
	public String saveClientEI(@Valid@ModelAttribute("client") ClientEI clientEI, BindingResult br, Model model) {
		return save(clientEI, br,model);
	}
	
	private String save(Client client, BindingResult br, Model model) {
		if (br.hasErrors()) {
			return goEdit(client, model);
		} 
		clientRepository.save(client);
		return "redirect:/client/clientList";
	}

=======
public class ClientController {

>>>>>>> kevin
}
