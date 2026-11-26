
#!/bin/sh

# CheckScan — глубокий анализ авторизации
# FreeBSD / Linux
# POSIX sh

set -u

ROOT="${1:-.}"
SRC="$ROOT/apk_analysis/jadx/sources"
OUT="$ROOT/api/auth_deep"

mkdir -p "$OUT/classes" "$OUT/references" "$OUT/auth"

if [ ! -d "$SRC" ]; then
    echo "ОШИБКА: Не найден каталог JADX:"
    echo "$SRC"
    exit 1
fi

echo "========================================"
echo " CheckScan Authentication Deep Analysis"
echo "========================================"

# Поиск конкретных Java-классов
find_class() {
    NAME="$1"
    REPORT="$OUT/classes/${NAME}_class.txt"

    echo "[*] Поиск $NAME.java"

    find "$SRC" -type f -name "$NAME.java" -print |
    while IFS= read -r FILE; do
        {
            echo
            echo "========================================"
            echo "FILE: $FILE"
            echo "========================================"
            cat "$FILE"
        } >> "$REPORT"
    done

    if [ -s "$REPORT" ]; then
        echo "[+] Найден $NAME"
    else
        echo "[-] $NAME не найден"
        echo "Класс может иметь другое имя или находиться в Smali."
    fi
}

# Поиск использования классов во всём исходном коде
find_references() {
    NAME="$1"
    REPORT="$OUT/references/${NAME}_references.txt"

    echo "[*] Ссылки на $NAME"

    find "$SRC" -type f -name '*.java' -exec \
        grep -n -H -E -C 5 \
        "(^|[^[:alnum:]_])${NAME}([^[:alnum:]_]|$)" {} \; \
        > "$REPORT" 2>/dev/null || true
}

# 1. Основные классы
for CLASS in j02 ix8 am2 ex7; do
    find_class "$CLASS"
    find_references "$CLASS"
done

# 2. Поиск ev3 и связанных заголовков
echo "[*] Анализ ev3 и HTTP-заголовков"

grep -R -n -H -E -C 5 \
    'ev3|Authorization|Bearer|access_token|auth_token|token_type|X-Auth|X-Token' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/headers_and_ev3.txt" 2>/dev/null || true

# 3. Получение и хранение токена
echo "[*] Поиск механизмов хранения токена"

grep -R -n -H -E -C 5 \
    'SharedPreferences|DataStore|EncryptedSharedPreferences|putString|getString|accessToken|refreshToken|authToken|saveToken|setToken' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/token_storage.txt" 2>/dev/null || true

# 4. Интерцепторы и сетевые клиенты
echo "[*] Поиск сетевой конфигурации"

grep -R -n -H -E -C 6 \
    'Interceptor|intercept\(|Request.Builder|addHeader|header\(|OkHttpClient|Retrofit.Builder|Authenticator' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/network_interceptors.txt" 2>/dev/null || true

# 5. SMS и destinationType
echo "[*] Поиск SMS-подтверждения"

grep -R -n -H -i -E -C 8 \
    'destinationType|destination_type|sms|verification|confirm|otp|phoneNumber|verificationCode' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/sms_destination.txt" 2>/dev/null || true

# 6. DTO и сериализация JSON
echo "[*] Поиск DTO и JSON-полей"

grep -R -n -H -E -C 5 \
    '@SerializedName|@Json|JsonProperty|Gson|Moshi|toJson|fromJson|RequestBody|requestBody|class ex7|class am2' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/dto_json.txt" 2>/dev/null || true

# 7. Все enum, связанные с авторизацией
echo "[*] Поиск enum"

grep -R -n -H -E -C 6 \
    'enum |destinationType|destination_type|SMS|EMAIL|PHONE' \
    "$SRC" --include='*.java' \
    > "$OUT/auth/enums.txt" 2>/dev/null || true

# 8. Сводка
SUMMARY="$OUT/REPORT.txt"

{
    echo "CHECKSCAN AUTHENTICATION ANALYSIS"
    echo "================================="
    echo
    echo "JADX: $SRC"
    echo
    echo "Основные классы:"
    for CLASS in j02 ix8 am2 ex7; do
        FILE="$OUT/classes/${CLASS}_class.txt"
        if [ -s "$FILE" ]; then
            echo "[FOUND] $CLASS"
        else
            echo "[NOT FOUND] $CLASS"
        fi
    done

    echo
    echo "Результаты:"
    find "$OUT" -type f -print | sort
} > "$SUMMARY"

echo
echo "========================================"
echo " АНАЛИЗ ЗАВЕРШЁН"
echo "========================================"
echo
echo "Результаты: $OUT"
echo
echo "Главные файлы:"
echo "$OUT/classes/j02_class.txt"
echo "$OUT/classes/ix8_class.txt"
echo "$OUT/classes/am2_class.txt"
echo "$OUT/classes/ex7_class.txt"
echo "$OUT/auth/headers_and_ev3.txt"
echo "$OUT/auth/token_storage.txt"
echo "$OUT/auth/sms_destination.txt"
echo "$OUT/auth/dto_json.txt"
echo "$OUT/REPORT.txt"
