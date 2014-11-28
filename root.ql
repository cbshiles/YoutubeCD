select url from moz_places where title in (select title from moz_bookmarks where parent = (select id from moz_bookmarks where title='▶Songs') AND type = 1);
