
window.addEventListener('DOMContentLoaded', ()=>{
  if (window.mermaid) mermaid.initialize({ startOnLoad:true, theme:'default' });
  const q=document.querySelector('#search');
  if(q){ q.addEventListener('input',()=>{
    const s=q.value.toLowerCase();
    document.querySelectorAll('.content *').forEach(el=>{
      el.style.outline='';
      if(s && el.textContent && el.textContent.toLowerCase().includes(s)){
        el.style.outline='2px dashed var(--accent)';
      }
    });
  });}
  const btn=document.getElementById('themeToggle');
  const root=document.documentElement;
  const saved=localStorage.getItem('sdr-theme')||'auto';
  setTheme(saved);
  btn?.addEventListener('click',()=>{
    const cur=localStorage.getItem('sdr-theme')||'auto';
    const next=cur==='auto'?'dark':(cur==='dark'?'light':'auto');
    setTheme(next);
  });
  function setTheme(m){ root.setAttribute('data-theme',m); localStorage.setItem('sdr-theme',m);
    btn.textContent = m==='dark'?'🌙':(m==='light'?'🌤️':'🌗'); }
});
