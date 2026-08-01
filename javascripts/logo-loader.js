document.addEventListener('DOMContentLoaded', function () {
  const overlay = document.createElement('div');
  overlay.id = 'pb-overlay';
  overlay.innerHTML = '<div id="pb-spinner"></div>';
  document.documentElement.appendChild(overlay);

  let fallback = null;
  let active = false;
  let showedAt = 0;
  const MIN_MS = 300;

  function show() {
    active = true;
    showedAt = Date.now();
    clearTimeout(fallback);
    overlay.classList.add('is-active');
    fallback = setTimeout(doHide, 1000);
  }

  function hide() {
    if (!active) return;
    const elapsed = Date.now() - showedAt;
    if (elapsed < MIN_MS) {
      setTimeout(doHide, MIN_MS - elapsed);
    } else {
      doHide();
    }
  }

  function doHide() {
    active = false;
    clearTimeout(fallback);
    overlay.classList.remove('is-active');
  }

  // Logo click
  document.addEventListener('click', function (e) {
    if (e.target.closest('.md-header__button.md-logo')) show();
  });

  // Page refresh (F5 / Ctrl+R) — stays on same page naturally
  const navEntry = performance.getEntriesByType('navigation')[0];
  if (navEntry && navEntry.type === 'reload') show();

  // MkDocs Material instant-navigation hook
  if (typeof document$ !== 'undefined') {
    let first = true;
    document$.subscribe(function () {
      if (first) { first = false; return; }
      hide();
    });
  }

  window.addEventListener('load', hide);
});
