package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class s66 extends u66 {
    public final String b;
    public String c;

    public s66(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    @Override // yads.u66
    public final String a() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final void d(String str) {
        if (defpackage.aa4.e(this.c, str)) {
            return;
        }
        this.c = str;
        a((u66) this);
    }
}
