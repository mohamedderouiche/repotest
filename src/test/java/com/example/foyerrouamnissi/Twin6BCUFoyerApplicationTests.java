package com.example.foyerrouamnissi;


import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import static org.springframework.test.util.AssertionErrors.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles("test")
class Twin6BCUFoyerApplicationTests {
    @Test
    void contextLoads() {
        assertNotNull("Context is not null", new Object());
    }

}
