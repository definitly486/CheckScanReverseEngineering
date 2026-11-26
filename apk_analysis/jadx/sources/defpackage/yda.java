package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class yda {
    public final z8a a;
    public final String b;

    static {
        z8a z8aVar = z8a.i;
    }

    public yda(z8a z8aVar) {
        this.a = z8aVar;
        this.b = "";
    }

    public final yda a(String str) {
        String str2 = this.b;
        if (!str2.isEmpty()) {
            str = me0.c(str2, ".", str);
        }
        return new yda(this.a, str);
    }

    public final String b(String str) {
        String str2 = this.b;
        if (str2.isEmpty()) {
            return str;
        }
        return str.isEmpty() ? str2 : me0.c(str2, ": ", str);
    }

    public yda(z8a z8aVar, String str) {
        this.a = z8aVar;
        this.b = str;
    }
}
