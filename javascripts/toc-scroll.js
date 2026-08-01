// Auto-scroll TOC to keep active item in view with improved scroll detection
document.addEventListener('DOMContentLoaded', function() {
    let userIsScrollingToc = false;
    let tocScrollTimeout = null;
    
    function scrollTocToActive() {
        // Don't auto-scroll if user is manually scrolling the TOC
        if (userIsScrollingToc) {
            return;
        }
        
        const activeLink = document.querySelector('.md-nav--secondary .md-nav__link--active');
        const tocContainer = document.querySelector('.md-sidebar--secondary .md-sidebar__scrollwrap');
        
        if (activeLink && tocContainer) {
            const containerRect = tocContainer.getBoundingClientRect();
            const activeLinkRect = activeLink.getBoundingClientRect();
            
            // Check if the active item is visible in the TOC container
            const isVisible = activeLinkRect.top >= containerRect.top && 
                             activeLinkRect.bottom <= containerRect.bottom;
            
            if (!isVisible) {
                // Calculate scroll position to center the active item
                const activeLinkOffsetTop = activeLink.offsetTop;
                const containerHeight = tocContainer.clientHeight;
                const linkHeight = activeLink.offsetHeight;
                
                // Center the active item in the container
                const scrollTop = activeLinkOffsetTop - (containerHeight / 2) + (linkHeight / 2);
                
                tocContainer.scrollTo({
                    top: Math.max(0, scrollTop),
                    behavior: 'smooth'
                });
            }
        }
    }

    function updateActiveSection() {
        // Check if we're at the bottom of the page
        const isAtBottom = (window.innerHeight + window.scrollY) >= document.documentElement.scrollHeight - 50;
        
        if (isAtBottom) {
            // Force highlight the last TOC item when at bottom of page
            const tocLinks = document.querySelectorAll('.md-nav--secondary .md-nav__link');
            const lastLink = tocLinks[tocLinks.length - 1];
            
            if (lastLink && !lastLink.classList.contains('md-nav__link--active')) {
                // Remove active class from all links
                tocLinks.forEach(link => link.classList.remove('md-nav__link--active'));
                
                // Add active class to last link
                lastLink.classList.add('md-nav__link--active');
                
                // Scroll TOC to show the newly active item
                setTimeout(scrollTocToActive, 50);
            }
        } else {
            // Let MkDocs handle normal scroll spy behavior
            setTimeout(scrollTocToActive, 100);
        }
    }

    let lastActiveLink = null;
    let scrollTimeout = null;

    // Watch for changes to the active TOC item
    const observer = new MutationObserver(function(mutations) {
        const currentActiveLink = document.querySelector('.md-nav--secondary .md-nav__link--active');
        
        // Only scroll if the active link has actually changed
        if (currentActiveLink && currentActiveLink !== lastActiveLink) {
            lastActiveLink = currentActiveLink;
            setTimeout(scrollTocToActive, 50);
        }
    });

    // Start observing
    const tocNav = document.querySelector('.md-nav--secondary');
    const tocContainer = document.querySelector('.md-sidebar--secondary .md-sidebar__scrollwrap');
    
    if (tocNav && tocContainer) {
        observer.observe(tocNav, {
            attributes: true,
            subtree: true,
            attributeFilter: ['class']
        });
        
        // Detect when user manually scrolls the TOC
        tocContainer.addEventListener('scroll', function() {
            userIsScrollingToc = true;
            
            // Clear any existing timeout
            clearTimeout(tocScrollTimeout);
            
            // Reset the flag after user stops scrolling (2 seconds)
            tocScrollTimeout = setTimeout(function() {
                userIsScrollingToc = false;
            }, 2000);
        });
        
        // Listen for scroll events with throttling
        window.addEventListener('scroll', function() {
            clearTimeout(scrollTimeout);
            scrollTimeout = setTimeout(updateActiveSection, 150);
        });
        
        // Initial setup
        setTimeout(function() {
            updateActiveSection();
            scrollTocToActive();
        }, 800);
    }
});