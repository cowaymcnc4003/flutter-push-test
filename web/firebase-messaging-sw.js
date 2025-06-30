// web/firebase-messaging-sw.js
importScripts('/firebase/firebase-app-compat.js');
importScripts('/firebase/firebase-messaging-compat.js');

firebase.initializeApp({
  apiKey: "AIzaSyCoJtpXhzrXPTgJQNBXjlgvEsj3IEhIppo",
  authDomain: "web.firebaseapp.com",
  projectId: "web-push-test-mhlee",
  messagingSenderId: "1007592869470",
  appId: "1:1007592869470:web:80aa9bc5316bd045992ecf",
});

const messaging = firebase.messaging();

// 백그라운드 or 다른 탭에서 푸시 수신 시 브라우저 알림 표시
messaging.onBackgroundMessage(function (payload) {
  console.log('[firebase-messaging-sw.js] 백그라운드 메시지:', payload);

  const notificationTitle = payload.notification?.title || '📬 새 알림';
  const notificationOptions = {
    body: payload.notification?.body || '',
    icon: '/icon.png', // 아이콘 경로
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
});