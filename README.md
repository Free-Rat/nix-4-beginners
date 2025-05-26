# nix-4-beginners

## 0. Prerekwizyty

### Wymagania

- System operacyjny: Linux lub macOS (możliwe także WSL2 na Windowsie)
- Dostęp do terminala
- Zainstalowany Git

### Instalacja Nix

Otwórz terminal i wykonaj:

```bash
curl -L https://nixos.org/nix/install | sh
```

Po zakończeniu instalacji, postępuj zgodnie z instrukcjami wyświetlonymi w
terminalu (zazwyczaj będzie to ponowne otwarcie terminala lub załadowanie
Środowiska poprzez `source ~/.nix-profile/etc/profile.d/nix.sh`).

---

## 1. Wstęp

- **Nix jako 'zwykły' package manager**\
  Pozwala instalować pakiety użytkownika bez ingerencji w systemowe repozytoria.

- **Czym różni się Nix od innych menedżerów pakietów?**
  - Deterministyczne buildy
  - Izolowane środowiska
  - Bezpieczna współpraca wielu wersji pakietów

- **`/nix/store/`**\
  Główna lokalizacja przechowywania wszystkich zależności i pakietów —
  identyfikacja przez hash.

- **Wiele wersji jednej paczki**\
  Równoległe instalowanie np. dwóch wersji Pythona, bez konfliktów.

- **Deklaratywne budowanie przy pomocy Flakes**\
  Powtarzalne, wersjonowane środowiska.

- **Czym jest `flake.nix`**\
  Plik konfiguracyjny zawierający deklarację projektu (np. paczki, środowiska,
  aplikacji).

- **Czym jest `flake.lock`**\
  Plik z zamrożonymi wersjami zależności — gwarancja powtarzalności.

---

## 2. Budowanie paczki w Pythonie

- **Anatomia `flake.nix` dla projektu Python**\
  Przykład zawiera sekcje:
  - `inputs` – zależności zewnętrzne
  - `outputs` – co budujemy
  - `buildInputs`, `nativeBuildInputs`, `dependencies` – zależności projektu

- **Budowanie paczki**

```bash
nix build
```

- **Uruchomienie aplikacji**

```bash
./result/bin/nazwa_paczki
```

---

### 2.a Budowanie paczek w innych językach

- Rust
- Node.js
- Go _(analogiczne podejście jak w Pythonie — zmieniają się tylko zależności i
  narzędzia buildujące)_

---

## 3. Tworzenie własnej paczki w C/C++

Opis krok po kroku:

- Przygotowanie `default.nix` lub `flake.nix`
- Zdefiniowanie źródła (`src`)
- Dodanie zależności (`gcc`, `make`, itp.)
- Kompilacja przy pomocy `nix build`

---

## Zasoby

- Oficjalna dokumentacja Nix: [https://nix.dev](https://nix.dev)

- Tutorial „Packaging existing software” (C/C++):
  [https://nix.dev/tutorials/packaging-existing-software.html](https://nix.dev/tutorials/packaging-existing-software.html)

- **Nix Pills (stdenv)** – zaawansowane zrozumienie środowiska buildów:
  [https://nixos.org/guides/nix-pills/19-fundamentals-of-stdenv.html](https://nixos.org/guides/nix-pills/19-fundamentals-of-stdenv.html)

- **Cachix** – zewnętrzna pamięć podręczna dla buildów:
  [https://cachix.org](https://cachix.org)

- **Flakes Anatomy** – wyjaśnienie struktury flake:
  [https://discourse.nixos.org/t/flake-anatomy](https://discourse.nixos.org/t/flake-anatomy)

- **CI z GitHub Actions** (integracja z Nix):
  [https://nix.dev/guides/recipes/continuous-integration-github-actions.html](https://nix.dev/guides/recipes/continuous-integration-github-actions.html)
