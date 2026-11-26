
#!/bin/sh

# APK API/Auth static scanner
# Usage: ./apk_api_scan.sh application.apk [output_directory]

set -u

APK=${1:-}
if [ -z "$APK" ] || [ ! -f "$APK" ]; then
    echo "Использование: $0 application.apk [output_directory]"
    exit 1
fi

APK=$(realpath "$APK" 2>/dev/null || echo "$APK")
NAME=$(basename "$APK" .apk)
OUT=${2:-"${NAME}_analysis"}

mkdir -p "$OUT/api/hosts" \
         "$OUT/api/endpoints" \
         "$OUT/api/requests" \
         "$OUT/api/network" \
         "$OUT/apk_analysis"

JADX_DIR="$OUT/apk_analysis/jadx"
APKTOOL_DIR="$OUT/apk_analysis/apktool"

log() {
    echo
    echo "===== $* ====="
}

require_tool() {
    if ! command -v "$1" >/dev/null 2>&1; then
        echo "Не найдена программа: $1"
        exit 1
    fi
}

require_tool jadx
require_tool grep
require_tool find
require_tool sed
require_tool awk

# --------------------------------------------------
# 1. Декомпиляция APK
# --------------------------------------------------

log "Декомпиляция JADX"

if [ -d "$JADX_DIR" ] && [ -n "$(find "$JADX_DIR" -type f -print -quit 2>/dev/null)" ]; then
    echo "Каталог уже содержит результат: $JADX_DIR"
else
    # Ограничиваем параллелизм, чтобы снизить пиковое потребление RAM.
    # Лимит можно изменить при запуске: JADX_HEAP=3G ./apk_api_scan.sh ...
    JADX_HEAP=${JADX_HEAP:-3G}
    echo "JADX Heap: $JADX_HEAP; потоков: 2"
    mkdir -p "$JADX_DIR"
    if JAVA_TOOL_OPTIONS="${JAVA_TOOL_OPTIONS:-} -Xmx$JADX_HEAP" \
        jadx --threads-count 2 -d "$JADX_DIR" "$APK"; then
        echo "JADX завершил декомпиляцию."
    else
        JADX_STATUS=$?
        echo "ВНИМАНИЕ: JADX завершился с кодом $JADX_STATUS."
        echo "Продолжаю анализ доступных файлов и APKTool."
    fi
fi

# --------------------------------------------------
# 2. Дополнительная декомпиляция APKTool
# --------------------------------------------------

if command -v apktool >/dev/null 2>&1; then
    log "Декомпиляция APKTool"

    if [ ! -d "$APKTOOL_DIR" ] || [ -z "$(find "$APKTOOL_DIR" -type f -print -quit 2>/dev/null)" ]; then
        if ! apktool d -f -o "$APKTOOL_DIR" "$APK"; then
            echo "ВНИМАНИЕ: APKTool завершился с ошибкой, продолжаю с имеющимися файлами."
        fi
    fi
else
    echo "APKTool не найден, пропускаю."
fi

# --------------------------------------------------
# 3. Сбор URL
# --------------------------------------------------

log "Поиск базовых URL"

grep -RhoE 'https?://[^"[:space:]<>)]+' "$JADX_DIR" \
    2>/dev/null |
    sed 's/[),;}]$//' |
    sort -u > "$OUT/api/hosts/all_url_candidates.txt"

# Отдельный список доменов
awk '
{
    url=$0
    sub(/^https?:\/\//, "", url)
    sub(/\/.*/, "", url)
    sub(/:.*/, "", url)
    if (url != "") print url
}' "$OUT/api/hosts/all_url_candidates.txt" |
    sort -u > "$OUT/api/hosts/unique_hosts.txt"

# Исключаем известные аналитические домены
grep -Ei 'google-analytics|firebase|crashlytics|app-measurement|doubleclick|adjust\.com|appsflyer' \
    "$OUT/api/hosts/unique_hosts.txt" \
    > "$OUT/api/hosts/analytics_hosts.txt" 2>/dev/null || true

grep -Eiv 'google-analytics|firebase|crashlytics|app-measurement|doubleclick|adjust\.com|appsflyer' \
    "$OUT/api/hosts/unique_hosts.txt" \
    > "$OUT/api/hosts/filtered_hosts.txt" || true

# --------------------------------------------------
# 4. Поиск API endpoints
# --------------------------------------------------

log "Поиск GET / POST / PUT / DELETE"

grep -RniE -B 3 -A 5 \
    '@(GET|POST|PUT|DELETE|PATCH|HTTP)\b|RequestMapping|PostMapping|GetMapping' \
    "$JADX_DIR" \
    > "$OUT/api/endpoints/route_candidates.txt" 2>/dev/null || true

# --------------------------------------------------
# 5. Поиск авторизации
# --------------------------------------------------

log "Поиск Login / Auth / Token"

grep -RniE -B 4 -A 6 \
    'login|signin|signIn|authenticate|authentication|authorization|access_token|refresh_token|password|credential' \
    "$JADX_DIR" \
    > "$OUT/api/endpoints/auth_candidates.txt" 2>/dev/null || true

# --------------------------------------------------
# 6. Поиск Request Body и DTO
# --------------------------------------------------

log "Поиск Request Body"

grep -RniE -B 5 -A 8 \
    '@Body|RequestBody|LoginRequest|AuthRequest|TokenRequest|Credentials|data class .*Request|class .*Request' \
    "$JADX_DIR" \
    > "$OUT/api/requests/request_classes.txt" 2>/dev/null || true

# --------------------------------------------------
# 7. Поиск сетевых заголовков и Interceptors
# --------------------------------------------------

log "Поиск сетевых Interceptors и заголовков"

grep -RniE -B 4 -A 8 \
    'Interceptor|addInterceptor|addNetworkInterceptor|addHeader|header\(|X-Api-Key|X-Signature|Authorization|Bearer|User-Agent|Content-Type|OkHttpClient' \
    "$JADX_DIR" \
    > "$OUT/api/network/client_setup.txt" 2>/dev/null || true

# --------------------------------------------------
# 8. Поиск шифрования
# --------------------------------------------------

log "Поиск криптографии"

grep -RniE -B 4 -A 8 \
    'AES|RSA|Cipher|getInstance|SecretKeySpec|IvParameterSpec|GCMParameterSpec|encrypt|decrypt|HmacSHA|MessageDigest|Signature|getEncoded|Base64' \
    "$JADX_DIR" \
    > "$OUT/api/network/crypto_candidates.txt" 2>/dev/null || true

# --------------------------------------------------
# 9. Поиск Retrofit / Ktor / Volley
# --------------------------------------------------

log "Поиск сетевых библиотек"

grep -RniE \
    'retrofit2|Retrofit\.Builder|okhttp3|ktor\.client|Volley|HttpURLConnection|Fuel' \
    "$JADX_DIR" \
    > "$OUT/api/network/network_libraries.txt" 2>/dev/null || true

# --------------------------------------------------
# 10. Поиск конфигурации API
# --------------------------------------------------

log "Поиск API конфигурации"

grep -RniE \
    'BASE_URL|API_URL|BASE_API|SERVER_URL|HOST_URL|API_HOST|apiUrl|baseUrl' \
    "$JADX_DIR" \
    > "$OUT/api/hosts/api_configuration.txt" 2>/dev/null || true

# --------------------------------------------------
# 11. Итог
# --------------------------------------------------

log "Анализ завершён"

echo "Результаты:"
echo "$OUT/api/hosts/"
echo "$OUT/api/endpoints/"
echo "$OUT/api/requests/"
echo "$OUT/api/network/"

echo
echo "Количество URL:"
wc -l < "$OUT/api/hosts/all_url_candidates.txt"

echo "Количество уникальных хостов:"
wc -l < "$OUT/api/hosts/unique_hosts.txt"

echo
echo "Основные файлы для проверки:"
echo "$OUT/api/hosts/filtered_hosts.txt"
echo "$OUT/api/endpoints/route_candidates.txt"
echo "$OUT/api/endpoints/auth_candidates.txt"
echo "$OUT/api/requests/request_classes.txt"
echo "$OUT/api/network/client_setup.txt"
echo "$OUT/api/network/crypto_candidates.txt"
