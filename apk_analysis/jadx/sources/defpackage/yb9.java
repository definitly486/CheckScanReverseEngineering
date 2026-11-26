package defpackage;

import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public final class yb9 {
    public static void a(String str, boolean z) {
        if (!z) {
            throw new ValidationException(str);
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new ValidationException("Must be true");
        }
    }

    public static void c(String str) {
        if (str == null || str.length() == 0) {
            throw new ValidationException("String must not be empty");
        }
    }

    public static void d(String str, String str2) {
        if (str.length() == 0) {
            throw new ValidationException(str2);
        }
    }

    public static void e(Object obj) {
        if (obj == null) {
            throw new ValidationException("Object must not be null");
        }
    }
}
