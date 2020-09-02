const initSlider =() => {
    const valueSpan = document.querySelector('.valueSpan2');
    const value = document.getElementById('customRange11');
    valueSpan.innerHTML = value.value;
    value.addEventListener('change', (event) => {
        valueSpan.innerHTML = value.value;
        console.log(value);

    })
}
export{ initSlider };
