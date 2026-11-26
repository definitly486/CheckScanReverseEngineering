package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class l63 {
    public static final boolean a = a("GRPC_ENABLE_RFC3986_URIS", true);

    public static boolean a(String str, boolean z) {
        String strTrim = System.getenv(str);
        if (strTrim == null) {
            strTrim = System.getProperty(str);
        }
        if (strTrim != null) {
            strTrim = strTrim.trim();
        }
        if (z) {
            return i13.b(strTrim) || Boolean.parseBoolean(strTrim);
        }
        return !i13.b(strTrim) && Boolean.parseBoolean(strTrim);
    }
}
