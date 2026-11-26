# Инструменты анализа Android API

Все вспомогательные скрипты проекта собраны в этом каталоге. Скрипты запускайте из корня репозитория, если явно не указан другой путь.

## Универсальный процесс для любого APK

1. Установить JADX; APKTool необязателен. Утилиты должны быть доступны через PATH.
2. Выполнить декомпиляцию и первичный сбор кандидатов:

   `sh scripts/apk_api_scan.sh /path/to/application.apk /path/to/output`

   Скрипт создаёт:
   - `apk_analysis/jadx/` — декомпиляция JADX;
   - `apk_analysis/apktool/` — ресурсы и Smali, если APKTool установлен;
   - `api/hosts/` — URL и домены;
   - `api/endpoints/` — REST/API-маршруты и auth-кандидаты;
   - `api/requests/` — DTO и request body;
   - `api/network/` — клиенты, заголовки и криптографические вызовы.

3. Построить общую карту endpoint-кандидатов:

   `python3 scripts/api_mapper.py /path/to/output/apk_analysis/jadx --app-name "MyApp" --md /path/to/output/api_report.md --json /path/to/output/api_report.json`

   Для анализа APKTool укажите каталог `apk_analysis/apktool`.

## CheckScan-специфичные инструменты

- `checkscan_login.py` — работа с известным CheckScan API и локальной сессией. Не является универсальным сканером.
- `analyze_checkscan_auth.py` — анализ связей авторизации, DTO, токенов и interceptor.
- `analyze_checkscan_auth.sh` — расширенная выборка классов/ссылок для текущей декомпиляции.
- `checkscan_auth_details.py` — узкие фрагменты классов авторизации.
- `checkscan_auth_sources.py` — извлечение известных CheckScan-классов и ресурсов.
- `checkscan_network_trace.py` — поиск конкретных признаков сетевого потока CheckScan.

Эти скрипты используют имена классов, маршруты и/или структуру CheckScan. Для другого приложения сначала используйте универсальные скрипты, затем адаптируйте правила под найденные классы и архитектуру.

## Общие рекомендации

- Статический поиск показывает кандидатов, но не доказывает, что запрос реально выполняется.
- Сопоставляйте UI/ViewModel → repository/use case → API interface → HTTP client → сериализатор → обработчик ответа.
- Для runtime-наблюдения используйте собственное тестовое устройство/эмулятор и разрешённые тестовые аккаунты.
- Не обходите certificate pinning и не перехватывайте чужие учётные данные. Для приложений без собственного тестового режима используйте анализ декомпилированного кода и официальные debug-сборки.
- Не коммитьте OTP, пароли, cookies, access/refresh tokens, приватные ответы API и файлы сессий.

## Сохранение изменений

`sh scripts/git.sh "описание изменений"` — коммит и push текущей ветки. Скрипт не меняет глобальные Git user.name/user.email.
