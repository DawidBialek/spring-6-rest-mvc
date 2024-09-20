package guru.springframework.spring6restmvc.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface Beer extends JpaRepository<Beer, UUID> {
}
