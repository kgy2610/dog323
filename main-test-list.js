document.addEventListener("DOMContentLoaded", function() {
    let firstSlider = document.querySelector('#funding .member-list1');
    let firstSlides = document.querySelectorAll('#funding .member-list1 .list');
    let firstCurrentIndex = 0;

    let firstSlideWidth = firstSlides[0].offsetWidth;

    function firstNextSlide() {
        firstCurrentIndex++;
        if (firstCurrentIndex >= firstSlides.length) {
            firstCurrentIndex = 0;
        }
        firstSlider.style.transform = `translateX(-${firstCurrentIndex * 230}px)`;
    }

    setInterval(firstNextSlide, 2000);
});

document.addEventListener("DOMContentLoaded", function() {
    let secondSlider = document.querySelector('.member-list2');
    let secondSlides = document.querySelectorAll('.member-list2 .listt');
    let secondCurrentIndex = 11; // 마지막 이미지로 시작하도록 수정

    let secondSlideWidth = secondSlides[0].offsetWidth;

    function secondNextSlide() {
        if (secondCurrentIndex <= 0) {
            secondSlider.style.transition = 'none'; // 첫 번째 이미지에 도달하면 애니메이션 없이 바로 마지막 이미지로 이동하도록 설정
            secondCurrentIndex = secondSlides.length - 1;
            secondSlider.style.transform = `translateX(-${secondCurrentIndex * 230}px)`;
            setTimeout(() => {
                secondSlider.style.transition = ''; // 다시 애니메이션을 적용하여 오른쪽으로 슬라이드될 수 있도록 설정
            }, 50);
        } else {
            secondCurrentIndex--;
            secondSlider.style.transform = `translateX(-${secondCurrentIndex * 230}px)`;
        }
    }

    setInterval(secondNextSlide, 2000);
});


