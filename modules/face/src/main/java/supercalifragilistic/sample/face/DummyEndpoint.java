package supercalifragilistic.sample.face;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import supercalifragilistic.sample.core.DummyInterface;

@RestController
final class DummyEndpoint {

  private final String dummyGreeting;
  private final AtomicLong counter = new AtomicLong(System.currentTimeMillis() / 4_819_065);
  private final DummyInterface dummy = DummyInterface.createNew();

  public DummyEndpoint(
      @Value("${dummy_0:default}") String dummy0,
      @Value("${dummy_1:default}") String dummy1,
      @Value("${dummy_2:default}") String dummy2
  ) {
    this.dummyGreeting = dummy0 + ", " + dummy1 + ", " + dummy2;
  }

  @GetMapping("dummy")
  public String hitDummy() {
    return "hello [" + dummyGreeting + "] " + dummy.func(counter.incrementAndGet());
  }
}
