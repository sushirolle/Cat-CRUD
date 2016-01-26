package com.CRUD;

/**
 * Created by naomi on 1/20/16.
 */
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Application {

	private static final Logger log = LoggerFactory.getLogger(Application.class);

	public static void main(String[] args) {
		SpringApplication.run(Application.class);
	}

	@Bean
	public CommandLineRunner demo(CatRepository repository) {
		return (args) -> {
			// save cats to repository
			repository.save(new CatEntity("Fluffy", "8"));
			repository.save(new CatEntity("Midnight", "10"));
			repository.save(new CatEntity("Nugget", "3"));
			repository.save(new CatEntity("Mittens", "5"));
			repository.save(new CatEntity("Peaches", "7"));

			// fetch all cats
			log.info("Cats found with findAll():");
			log.info("-------------------------------");
			for (CatEntity cat : repository.findAll()) {
				log.info(cat.toString());
			}
			log.info("");

			// fetch a cat with ID
			CatEntity cat = repository.findOne(1L);
			log.info("Cat found with findOne(1L):");
			log.info("--------------------------------");
			log.info(cat.toString());
			log.info("");

			// fetch cats by name
			log.info("Cat found with findByCatName('Fluffy'):");
			log.info("--------------------------------------------");
			for (CatEntity Fluffy : repository.findByCatName("Fluffy")) {
				log.info(Fluffy.toString());
			}
			log.info("");
		};
	}
}