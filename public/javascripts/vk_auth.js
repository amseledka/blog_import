VK.Auth.login(function(response) {
  console.log(response);
  if (response.session) {
    /* Пользователь успешно авторизовался */
    if (response.settings) { 
      /* Выбранные настройки доступа пользователя, если они были запрошены */
    }
  } else {
    /* Пользователь нажал кнопку Отмена в окне авторизации */
  }
});

