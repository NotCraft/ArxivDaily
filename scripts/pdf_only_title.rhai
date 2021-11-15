let title = params[0];
title.trim();
let title = title.split_rev(" (", 2);
let title = title[1];
let title = title.latex_escape();

title