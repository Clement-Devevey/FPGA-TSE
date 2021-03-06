Disponible ici : https://github.com/alexandre-humbert/FPGA-TSE/blob/main/CNN/

<details open="open">
  <summary>Table des matières</summary>
  <ol>
    <li>
      <a href="#coefficients-constants">Coefficients constants</a>
      <ul>
        <li><a href="#vecteurs-signés">Vecteurs signés</a></li>
        <li><a href="#vecteurs-non-signés">Vecteurs non-signés</a></li>
        <li><a href="#entiers">Entiers</a></li>
        <li><a href="#entiers-0-255">Entiers [0, 255]</a></li>
      </ul>
    </li>
    <li>
      <a href="#coefficients-en-entrée">Coefficients en entrée</a>
      <ul>
        <li><a href="#vecteurs-signés+1">Vecteurs signés</a></li>
        <li><a href="#vecteurs-non-signés-1">Vecteurs non-signés</a></li>
        <li><a href="#entiers-1">Entiers</a></li>
        <li><a href="#entiers-0-255-1">Entiers [0, 255]</a></li>
      </ul>
    </li>
  </ol>
</details>

## Coefficients constants
### Vecteurs signés
- Développé par Clément
- Compilé et simulé par Alexandre, Julien
- Exécuter la commande
```sh
   do vect.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_vecto_do.png?raw=true)

### Vecteurs non-signés
- Développé par Clément
- Compilé et simulé par Alexandre, Julien
- Exécuter la commande
```sh
   do unsigned_vect.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_u_vect_do.png?raw=true)

### Entiers
- Développé par Julien
- Compilé et simulé par Alexandre, Clément
- Exécuter la commande
```sh
   do integer_conv.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_integer_conv.png?raw=true)
   
### Entiers [0, 255]
- Développé par Alexandre
- Compilé et simulé par Julien, Clément
- Exécuter la commande
```sh
   do integer_range.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_integer_range.PNG?raw=true)

## Coefficients en entrée
### Vecteurs signés
- Développé par Clément
- Compilé et simulé par Alexandre, Julien
- Exécuter la commande
```sh
   do vect_in.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_vect_in.png?raw=true)
   
   
### Vecteurs non-signés
- Développé par Clément
- Compilé et simulé par Alexandre, Julien
- Exécuter la commande
```sh
   do unsigned_vect_in.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_u_vect_in.png?raw=true)
   
### Entiers
- Développé par Julien
- Compilé et simulé par Alexandre, Clément
- Exécuter la commande
```sh
   do integer_conv_in.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_integer_conv_in.png?raw=true)

### Entiers [0, 255]
- Développé par Alexandre
- Compilé et simulé par Julien, Clément
- Exécuter la commande
```sh
   do integer_range_in.do
   ```
- Résultats attendus : 

![alt text](https://github.com/alexandre-humbert/FPGA-TSE/blob/main/sim_images/resultat_integer_range_in.PNG?raw=true)
