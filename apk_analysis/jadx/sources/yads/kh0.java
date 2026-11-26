package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kh0 extends uh0 {
    public final String a;
    public final String b;
    public final String c;

    public kh0(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kh0)) {
            return false;
        }
        kh0 kh0Var = (kh0) obj;
        return defpackage.aa4.e(this.a, kh0Var.a) && defpackage.aa4.e(this.b, kh0Var.b) && defpackage.aa4.e(this.c, kh0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + l4.a(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.me0.d(defpackage.ad2.d("AdUnit(name=", str, ", format=", str2, ", id="), this.c, ")");
    }
}
