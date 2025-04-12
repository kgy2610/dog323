const images = document.querySelectorAll('.balloon1, .balloon2, .balloon3');

const observer = new IntersectionObserver(entries => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('show');
      observer.unobserve(entry.target);
    }
  });
});

images.forEach(balloons => {
  observer.observe(balloons);
});
