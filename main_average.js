$(document).ready(function() {
    // 숫자 카운트 애니메이션
    $('.count1').each(function () {
        const $this = $(this),
            countTo = parseInt($this.attr('data-count')); // 초기값을 목표 숫자로 설정

        $({ countNum: $this.text() }).animate({
            countNum: countTo
        }, {
            duration: 2000, // 2초 동안 애니메이션 진행
            easing: 'linear',
            step: function () {
                $this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')); // 현재 값에 소수점 이하를 제거하여 표시
            },
            complete: function () {
                $this.text(countTo.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')); // 애니메이션 완료 후 최종값 표시
            }
        });
    });

    $('.count2').each(function () {
        const $this = $(this),
            countTo = parseInt($this.attr('data-count')); // 초기값을 목표 숫자로 설정

        $({ countNum: $this.text() }).animate({
            countNum: countTo
        }, {
            duration: 2000, // 2초 동안 애니메이션 진행
            easing: 'linear',
            step: function () {
                $this.text(Math.floor(this.countNum).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')); // 현재 값에 소수점 이하를 제거하여 표시
            },
            complete: function () {
                $this.text(countTo.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')); // 애니메이션 완료 후 최종값 표시
            }
        });
    });
});
