let title = params[0];
title.trim();
let title = title.split_rev(" (", 2);
let title = title[1];

title