package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rm8 implements fm8 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final pw7 h;

    public rm8(int i, String str, String str2, String str3, String str4, boolean z, boolean z2, pw7 pw7Var) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = pw7Var;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.b + this.d + this.f + this.g + this.e;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    @Override // defpackage.fm8
    public final boolean isDone() {
        return this.f;
    }
}
