document.addEventListener('DOMContentLoaded', () => {
    const menuToggle = document.getElementById('menu-toggle');
    const navLinks = document.getElementById('nav-links');

    // Masquer la navigation par défaut
    navLinks.style.display = 'none';

    menuToggle.addEventListener('change', () => {
        if (menuToggle.checked) {
            navLinks.style.display = 'flex';
        } else {
            navLinks.style.display = 'none';
        }
    });
});
