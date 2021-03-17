package br.edu.infnet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.model.negocio.Usuario;
import br.edu.infnet.model.service.UsuarioService;

@Controller
public class UsuarioControler {

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping(value = "/")
	public String iniciar(Model model) {
		
        model.addAttribute("nome", "Aline Ferreira");
        model.addAttribute("email", "aline.silva@al.infnet.edu.br");
        model.addAttribute("Git", "https://github.com/linlicc");
        
		return "index";
	}

	@GetMapping(value = "/usuario")
	public String cadastrar(Model model) {

		model.addAttribute("usuarios", usuarioService.obterLista());
		usuarioService.obterLista();

		return "usuario/detalhe";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {

		System.out.println(usuario);
		usuarioService.incluir(usuario);

		return "redirect:/usuario";
	}
	
	
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		
		usuarioService.excluir(id);
		
		return "redirect:/usuario";
		
	}
	
}
