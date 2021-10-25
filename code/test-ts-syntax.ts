function fn(x: string | number) {
  if (typeof x === "string") {
    x = SomeClassObject() // do something
  } else if (x >= 3.14159265) {
    "42" // do something else
  } else {
    `The answer is ${x * 1.414}`; // template literal!
  }
}