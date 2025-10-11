// rango.js
// Genera i barreja els números dins del rang especificat per al sorteig

let numbers = [];
let current = 0;

function shuffle(arr) {
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
}

function generateNumbers(min = 1, max = 999) {
  numbers = Array.from({length: max - min + 1}, (_, i) => i + min);
  shuffle(numbers);
  current = 0;
}

// Inicializar con el rango por defecto
generateNumbers(1, 999);

function getNextNumber() {
  if (current >= numbers.length) return null;
  return numbers[current++];
}

function resetNumbers() {
  shuffle(numbers);
  current = 0;
  console.log('Números del sorteig reiniciats');
}

function resetNumbersWithRange() {
  // Esta función será llamada desde el HTML cuando se cambien los rangos
  if (typeof minNumber !== 'undefined' && typeof maxNumber !== 'undefined') {
    generateNumbers(minNumber, maxNumber);
    console.log(`Números del sorteig reiniciats amb rang ${minNumber}-${maxNumber}`);
  }
}
