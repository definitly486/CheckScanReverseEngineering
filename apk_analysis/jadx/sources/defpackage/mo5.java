package defpackage;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class mo5 {
    public static String a(String str) {
        return str != null ? str.toLowerCase(Locale.ROOT) : "";
    }

    public static String b(String str) {
        return a(str).trim();
    }
}
