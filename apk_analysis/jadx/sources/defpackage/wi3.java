package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class wi3 {
    public static final wi3 d = new wi3("", "", false);
    public static final wi3 e = new wi3("\n", "  ", true);
    public final String a;
    public final String b;
    public final boolean c;

    public wi3(String str, String str2, boolean z) {
        if (!str.matches("[\r\n]*")) {
            fg.c("Only combinations of \\n and \\r are allowed in newline.");
            throw null;
        }
        if (!str2.matches("[ \t]*")) {
            fg.c("Only combinations of spaces and tabs are allowed in indent.");
            throw null;
        }
        this.a = str;
        this.b = str2;
        this.c = z;
    }
}
