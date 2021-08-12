/* Exapand/Collapse with TAB key */
var expanded = false;
document.onkeydown = function (e) {
    if (e.keyCode === 9) {
        expanded = !expanded;
        document.querySelectorAll("details").forEach(detail => detail.open = expanded);
        return false;
    }
};

/* Switch Theme */
const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');

function switchTheme(e) {
    if (e.target.checked) {
        document.documentElement.setAttribute('data-theme', 'light');
        localStorage.setItem('theme', 'light'); //add this
    } else {
        document.documentElement.setAttribute('data-theme', 'dark');
        localStorage.setItem('theme', 'dark'); //add this
    }
}

toggleSwitch.addEventListener('change', switchTheme, false);
const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;
if (currentTheme) {
    document.documentElement.setAttribute('data-theme', currentTheme);
    if (currentTheme === 'light') {
        toggleSwitch.checked = true;
    }
}

const timestamp = document.getElementById("build-timestamp");
const timestamp_local = new Date(timestamp.getAttribute("datetime")).toLocaleString();

const badge = document.getElementById("build-timestamp-badge");
badge.src = `https://img.shields.io/github/workflow/status/alongwy/arxivdaily/Rss%20Feed?label=${timestamp_local}&style=for-the-badge`
