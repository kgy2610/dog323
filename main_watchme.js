const items = document.querySelectorAll('.item');
let currentIndex = 0;

const expand = (item, i) => {
  items.forEach((it, ind) => {
    if (i === ind) return;
    it.clicked = false;
  });

  gsap.to(items, {
    width: (index) => index === i ? '615px' : '70px',
    duration: 2.5,
    ease: 'power3.out',
    stagger: {
      from: 'start'
    }
  });

  item.clicked = !item.clicked;
};

const autoExpand = () => {
  const nextIndex = (currentIndex + 1) % items.length;
  expand(items[nextIndex], nextIndex);
  currentIndex = nextIndex;
};

items.forEach((item, i) => {
  item.clicked = false;
  item.addEventListener('click', () => expand(item, i));
});

setInterval(autoExpand, 2500);
