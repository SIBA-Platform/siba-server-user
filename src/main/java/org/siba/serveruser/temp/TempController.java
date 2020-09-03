package org.siba.serveruser.temp;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TempController {

    //Test Url
    @GetMapping("/temp")
    public ResponseEntity returnTempApi() {
        return ResponseEntity.ok(new Object() {
            public String temp = "jenkins";
        });
    }
}
