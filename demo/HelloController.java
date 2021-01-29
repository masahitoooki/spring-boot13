package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {

		@RequestMapping(value="/", method=RequestMethod.GET)
        public String hello(Model model) {
            model.addAttribute("click", false);
            model.addAttribute("message", "please click!");
            return "hello";
        }

        @RequestMapping(value="/", method=RequestMethod.POST)
        public String click(@RequestParam("animal")String animal, Model model) {
            model.addAttribute("click", true);

            if("dog".equals(animal)){
                model.addAttribute("chosenAnimal", 1);
            }else if("cat".equals(animal)){
                model.addAttribute("chosenAnimal", 2);
            }else if("rabbit".equals(animal)){
                model.addAttribute("chosenAnimal", 3);
            }

            return "hello";
        }

}
