javascript:(function(){
  const btn = document.createElement("span");
  btn.textContent = "View My Analytics";
  btn.style.backgroundColor = "#9966ff";
  btn.style.padding = "15px";
  btn.style.borderRadius = "25px";
  btn.style.color = "white";
  btn.style.cursor = "pointer";
  btn.style.marginTop = "15px";
  btn.style.display = "inline-block";
  btn.style.position = "relative";
  btn.onclick = () => {
    const pathname = window.location.pathname;
    window.location.href = 'https://scratchviews.com' + pathname.slice(0, -1);
  };

  const profileBox = document.querySelector('#profile-box');
  if (profileBox && !document.querySelector('#analytics-button')) {
    const wrapper = document.createElement("div");
    wrapper.style.marginTop = "10px";
    btn.id = "analytics-button";
    wrapper.appendChild(btn);
    profileBox.appendChild(wrapper);
  }
})();
