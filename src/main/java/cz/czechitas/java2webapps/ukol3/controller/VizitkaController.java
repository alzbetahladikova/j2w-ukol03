package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
  private final List <Vizitka> seznamVizitek = List.of(
          new Vizitka("Milena Pokorná","Alfa", "Rovná 100", "100 00", "milena@nemail.com", "111 111 111", "www.nevebovka.cz"),
          new Vizitka("Alena Pokorná", "Beta", "Křivá 200","200 00","alena@nemail.com", "222 222 222","www.nikdenic.com"),
          new Vizitka("Jelena Pokorná", "Gama", "Úzká 300","300 00","jelena@nemail.com", "333 333 333","www.prazdnopusto.com")
   );

  @GetMapping("/")
  public ModelAndView seznam() {
    ModelAndView modelAndView = new ModelAndView("/seznam");
    modelAndView.addObject("vizitky",seznamVizitek);
    return modelAndView;
  }


  @GetMapping("/detail/{id}")

    public ModelAndView detail(@PathVariable int id) {
      ModelAndView modelAndView = new ModelAndView("/detail");
      modelAndView.addObject("vizitka", seznamVizitek.get(id));
      return modelAndView;
  }
}
