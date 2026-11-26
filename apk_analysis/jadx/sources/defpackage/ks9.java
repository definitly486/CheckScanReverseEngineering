package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class ks9 {
    public static final ks9 d = new ks9(pp9.d, "", true);
    public final pp9 a;
    public final String b;
    public final boolean c;

    public ks9(pp9 pp9Var, String str, boolean z) {
        this.a = pp9Var;
        this.b = str;
        this.c = z;
    }

    public final ks9 a(String str) {
        String str2 = this.b;
        if (!str2.isEmpty()) {
            str = me0.c(str2, ".", str);
        }
        return new ks9(this.a, str, this.c);
    }

    public final void b(int i) {
        this.a.b(e(""), 0, 0, i, null);
    }

    public final void c(int i, String str) {
        this.a.b(e(str), 0, 0, i, null);
    }

    public final ks9 d(int i) {
        return new ks9(this.a, this.b + "[" + i + "]", this.c);
    }

    public final String e(String str) {
        boolean zIsEmpty = str.isEmpty();
        String str2 = this.b;
        return zIsEmpty ? str2 : cg.d(str2, ": ", str);
    }

    public final void f(int i) {
        this.a.d(0, i, e(""));
    }

    public final void g(int i, String str) {
        this.a.d(0, i, e(str));
    }
}
