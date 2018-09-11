package ;

class RunTests {

  static function main() {  
    tink.testrunner.Runner.run(tink.unit.TestBatch.make([
      new TestBasic(),
      new TestMaps(),
      new TestDate(),
      new TestAuto(),
      new TestArrays(),
      new TestScheduler(),
    ]))
      .handle(function(result) {
        travix.Logger.exit(result.summary().failures.length);
      });
  }
}