import { useState } from "react";
import { Button, Field, Heading, Screen, Text, defineApp, useDisplayState } from "@wso2/prototype-kit";

function Greeting() {
  const state = useDisplayState();
  const startEmpty = state === "state.empty";
  const [name, setName] = useState(startEmpty ? "" : "Ana");
  const [message, setMessage] = useState(startEmpty ? "" : "Hello, Ana!");

  const greet = () => {
    if (!name) return;
    setMessage(`Hello, ${name}!`);
  };

  return (
    <Screen>
      <Heading id="heading.greeting" text="Greeting Board" />
      <Field id="field.name" label="Your name" value={name} onChange={setName} />
      <Button id="btn.greet" label="Greet" emphasis="primary" disabled={!name} onPress={greet} />
      {message && <Text id="text.greeting" text={message} />}
    </Screen>
  );
}

export default defineApp({
  screens: {
    "screen.greeting": Greeting,
  },
  data: {},
});
