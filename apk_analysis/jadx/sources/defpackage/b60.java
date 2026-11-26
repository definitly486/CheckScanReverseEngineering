package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b60 implements pz3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final int g;

    public b60(long j, String str, String str2, String str3, String str4, String str5, int i) {
        x7.b(str, str2, str3);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = i;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.g;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }
}
