const initDashboard = () => {
  const onglets = document.querySelectorAll('.onglets');
  const contenus = document.querySelectorAll('.contenu')
  let index = 0;

  onglets.forEach(onglet => {
      onglet.addEventListener('click', () => {
          if (onglet.classList.contains('active-onglet')) {
              return;
          } else {
              onglet.classList.add('active-onglet');
          }
          index = onglet.getAttribute('data-anime');
          onglets.forEach( sousOnglet => {
              if(sousOnglet.getAttribute('data-anime') != index) {
                  sousOnglet.classList.remove('active-onglet');
              }
          })
          contenus.forEach( contenu => {
            if (contenu.getAttribute('data-anime') == index) {
              contenu.classList.add('activeContenu');
            } else {
              contenu.classList.remove('activeContenu');
            }
          })
      })
  })
}

export { initDashboard };
