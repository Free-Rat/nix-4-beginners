# nix-4-beginners

## 0. Prerekwizyty:

#### Wymagania

    System operacyjny: Linux lub macOS (WSL2 na Windowsie)

    Dostęp do terminala

    Git zainstalowany lokalnie

#### Instalacja Nix

Otwórz terminal i wykonaj:

```
curl -L https://nixos.org/nix/install | sh
```

## 1. Wstęp

- nix jako 'zwykły' package manager
- czym różni się nix of innych package managerów
- /nix/store/
- wiele wersji jednej paczki
- deklaratywne budowanie przy pomocy Flakes
- czym jest flake.nix
- czym jest flake.lock

## 2. Budowanie paczki Python

- anatomia flake.nix na przykładzie python
- omówienie: source, buildInputs, nativeBuildInputs, dependensies
- zbudownaie paczki: nix build
- uruchomienie ./result/bin/nazwa_paczki

### 2.a budowanie paczki w Rust / Node / ...

## 3. Własne tworzenie paczki C/C++

- ...

## Zasoby

Oficjalna dokumentacja Nix: https://nix.dev Nix

Tutoriale „Packaging existing software” (C/C++):
https://nix.dev/tutorials/packaging-existing-software.html Nix

Nix Pills (stdenv):
https://nixos.org/guides/nix-pills/19-fundamentals-of-stdenv.html NixOS

Cachix: https://cachix.org cachix.org

Flakes Anatomy: Discourse NixOS NixOS Discourse

CI z GitHub Actions:
https://nix.dev/guides/recipes/continuous-integration-github-actions.html Nix
