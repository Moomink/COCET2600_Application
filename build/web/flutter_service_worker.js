'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/AssetManifest.json": "73bac08f8822c33bf79414fdd4bbbdb0",
"/assets/assets/data/word_1-50.json": "ce681f9bf2ff3561240c9dafd422250d",
"/assets/assets/data/word_51-100.json": "3b5c6fc85fcc1ef6833e6e86078fd670",
"/assets/assets/images/COCET_LOGO.jpg": "b8010c0590aaa75c81d667c3ec8269ca",
"/assets/assets/images/NITKC.jpg": "e18c0e8ae78436e31f55919d9bb15a48",
"/assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/LICENSE": "940eb1a30130df6ba11703cc820d4bf6",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/index.html": "fcb428e8d16167c1d881243495516104",
"/main.dart.js": "31a75a7ab0e969ee63975f9eef856359",
"/manifest.json": "475b9ac6752c9a475d5a4acdb95c227a"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
