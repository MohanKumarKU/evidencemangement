package com.fis.innovatein48.evidencemanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.fis.innovatein48.evidencemanagement.helper.FileStorageProperties;

@SpringBootApplication
@EnableConfigurationProperties({
    FileStorageProperties.class
})
public class EvidenceManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(EvidenceManagementApplication.class, args);
	}
}
