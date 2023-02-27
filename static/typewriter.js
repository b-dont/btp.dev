const addCharDelay = 75;
const removeCharDelay = 45;
const wordDelay = 1500;
const typewriterElement = document.getElementById('typewriter');
const typewriterPrompts = [
  'Systems Administrator',
  'DevOps Engineer',
  'Freelance Developer',
  'Automation Enthusiast',
  'Open Source Advocate',
  'Blogger~~~~~~~~~~ Sometimes..',
  'Table-top RPG Lover',
];

let currentTypewriterIndex = 0;

function typeNextPrompt() {
  function typeChar(char) {
    if (char !== '~') typewriterElement.innerText += char;
  }
  function removeChar() {
    typewriterElement.innerText = typewriterElement.innerText.slice(0, -1);
  }

  const word = typewriterPrompts[currentTypewriterIndex];
  let delaySoFar = 0;

  for (const char of word) {
    setTimeout(typeChar.bind(this, char), delaySoFar);
    delaySoFar += addCharDelay;
  }

  delaySoFar += wordDelay;

  for (const char of word.split('').reverse()) {
    setTimeout(removeChar, delaySoFar);
    delaySoFar += removeCharDelay;
  }

  currentTypewriterIndex = (currentTypewriterIndex + 1) % typewriterPrompts.length;
  setTimeout(typeNextPrompt, delaySoFar);
}

setTimeout(typeNextPrompt, wordDelay / 2);
