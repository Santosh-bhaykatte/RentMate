document.addEventListener("DOMContentLoaded", function () {
    const logoRow1 = document.getElementById('logoRow1');
    const cloneRow1 = logoRow1.cloneNode(true);
    logoRow1.parentElement.appendChild(cloneRow1);

    const logoRow2 = document.getElementById('logoRow2');
    const cloneRow2 = logoRow2.cloneNode(true);
    logoRow2.parentElement.appendChild(cloneRow2);

    let x1 = 0;
    let x2 = 0;
    const speed = 1;

    function scrollRow1() {
        x1 -= speed;
        logoRow1.style.transform = `translateX(${x1}px)`;
        cloneRow1.style.transform = `translateX(${x1 + logoRow1.offsetWidth}px)`;

        if (x1 <= -logoRow1.offsetWidth) {
            x1 = 0;
        }
        requestAnimationFrame(scrollRow1);
    }

    function scrollRow2() {
        x2 += speed;
        logoRow2.style.transform = `translateX(${x2}px)`;
        cloneRow2.style.transform = `translateX(${x2 - logoRow2.offsetWidth}px)`;

        if (x2 >= logoRow2.offsetWidth) {
            x2 = 0;
        }
        requestAnimationFrame(scrollRow2);
    }

    scrollRow1();
    scrollRow2();
});