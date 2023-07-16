package its.darioniero.trainsdelay.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JourneyController {
    @GetMapping("/insert/journey")
    public String getInsertJourneyView()
    {
        return "insert-journey";
    }
}
