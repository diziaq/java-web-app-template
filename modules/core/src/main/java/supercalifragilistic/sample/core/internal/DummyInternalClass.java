package supercalifragilistic.sample.core.internal;

import supercalifragilistic.sample.core.DummyInterface;

public final class DummyInternalClass implements DummyInterface {

  private final String title;

  public DummyInternalClass(String title) {
    this.title = title;
  }

  @Override
  public String func(long counter) {
    return title + (counter + 1);
  }
}
