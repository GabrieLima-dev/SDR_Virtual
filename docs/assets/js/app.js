
window.addEventListener('DOMContentLoaded', () => {
  if (window.mermaid) mermaid.initialize({ startOnLoad: true, theme: 'default' });

  const search = document.querySelector('#search');
  if (search) {
    search.addEventListener('input', () => {
      const q = search.value.toLowerCase();
      document.querySelectorAll('.content article, .content h2, .content p, .content li').forEach(el => {
        el.style.outline = '';
        if (q && el.textContent.toLowerCase().includes(q)) {
          el.style.outline = '2px dashed var(--accent)';
        }
      });
    });
  }

  const themeToggle = document.getElementById('themeToggle');
  const root = document.documentElement;
  const saved = localStorage.getItem('sdr-theme') || 'auto';
  setTheme(saved);

  themeToggle?.addEventListener('click', () => {
    const current = localStorage.getItem('sdr-theme') || 'auto';
    const next = current === 'auto' ? 'dark' : (current === 'dark' ? 'light' : 'auto');
    setTheme(next);
  });

  function setTheme(mode) {
    root.setAttribute('data-theme', mode);
    localStorage.setItem('sdr-theme', mode);
    if (mode === 'auto') themeToggle.textContent = '🌗';
    else if (mode === 'dark') themeToggle.textContent = '🌙';
    else themeToggle.textContent = '🌤️';
  }
});
