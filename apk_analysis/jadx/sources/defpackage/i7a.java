package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class i7a {
    public static final i7a e = new i7a(pp9.d, 999);
    public final z8a a;
    public final pp9 b;
    public final int c;
    public final String d;

    public i7a(z8a z8aVar, pp9 pp9Var, int i, String str) {
        this.a = z8aVar;
        this.b = pp9Var;
        this.c = i;
        this.d = str;
    }

    public final void a(int i, String str, String str2) {
        pp9 pp9Var = this.b;
        if (pp9Var != null) {
            pp9Var.b(str, this.c, 3, i, str2);
        } else {
            this.a.a(str, this.c, 3, i, str2);
        }
    }

    public i7a(pp9 pp9Var, int i) {
        this(pp9Var.a, pp9Var, i, "");
    }
}
