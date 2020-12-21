package supercalifragilistic.sample.core;

import supercalifragilistic.sample.core.internal.DummyInternalClass;

public interface DummyInterface {

  String func(long counter);

  static DummyInterface createNew() {
    return new DummyInternalClass("sample");
  }
}
