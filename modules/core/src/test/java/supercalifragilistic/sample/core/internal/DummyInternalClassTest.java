package supercalifragilistic.sample.core.internal;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.stream.Stream;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import supercalifragilistic.sample.core.DummyInterface;

public class DummyInternalClassTest {

  @DisplayName("when ... should increment by 1")
  @ParameterizedTest(name = "increment: {0} => {1}")
  @MethodSource("validValues")
  public void test(int input, String expectedOutput) {
    var result = DummyInterface.createNew().func(input);
    assertEquals(expectedOutput, result);
  }

  public static Stream<Arguments> validValues() {
    return Stream.of(
        Arguments.of(1, "sample2"),
        Arguments.of(100, "sample101"),
        Arguments.of(51672, "sample51673")
    );
  }
}
