# Numerical-Music-SignalProcessing-
Cucu Viorel-Cosmin 314CA

# Descrierea Funcțiilor

## stereo_to_mono.m
Această funcție primește mai multe canale de sunet și le transformă într-un singur canal (mono) prin calcularea mediei semnalelor din toate canalele.

## spectogram.m
Funcția primește un semnal audio și îl împarte în mai multe ferestre. Pașii principali sunt:
1. Calculăm numărul de ferestre.
2. Construim vectorul de timp, unde pasul este dat de dimensiunea ferestrei împărțită la frecvența de eșantionare (în cazul nostru, 44,1kHz).
3. Frecvența maximă atinsă este jumătate din frecvența de eșantionare, ceea ce ne permite să determinăm vectorul de frecvențe.

Apoi, aplicăm funcția **Hann** pe dimensiunea fiecărei ferestre pentru a obține un vector care are valori 0 la margini și se concentrează spre centru (în centru având valoarea 1). Extragem câte o fereastră din semnal, o înmulțim cu acest vector, iar peste rezultat aplicăm **FFT**. Rezultatul este stocat în spectogramă pe coloanele corespunzătoare.

---

# Comparatii între diverse tipuri de sunete

### Comparatie între "Plain Loop" și "Plain Sound":
- **Plain Sound**: Un sunet întrerupt, cu o amplitudine puternică la aproximativ 2000 Hz (frecvență medie-înaltă) și alta la o frecvență joasă.
- **Plain Loop**: Un sunet continuu, cu o gamă variată de frecvențe.

### Comparatie între "Low Pass Sound" și "Plain Sound":
- **Low Pass Sound** este practic **Plain Sound**, dar cu un filtru aplicat care elimină toate frecvențele mai mari decât o anumită valoare (în acest caz, frecvențele mai mari de 1200 Hz).

### Comparatie între "Reverb Sound" și "Plain Sound":
- **Reverb Sound** reprezintă **Plain Sound**, dar cu un efect de delay. Sunetul inițial este urmat de o replică ușoară a acestuia.

### "Tech" Sound:
- Conform spectogramei, sunetul **Tech** are o frecvență variată, cu o amplitudine puternică de la frecvențele joase până la frecvențele de aproximativ 15kHz. Amplitudinea este adesea concentrată pe frecvențele joase (bass).

### "Low Pass Tech":
- În această versiune, frecvențele înalte dispar, rămânând doar frecvențe până la 1200 Hz. Este același sunet ca **Tech**, dar cu o senzație mai "înfundată".

### "Reverb Tech":
- Apare un efect de delay în sunet, iar spectograma indică, de asemenea, o amplific
