package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nm8 implements so8 {
    public final int a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final pw7 f;

    public nm8(int i, String str, String str2, boolean z, boolean z2, pw7 pw7Var) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = pw7Var;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }
}
