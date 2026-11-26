package yads;

import defpackage.al5;
import defpackage.fh8;

/* JADX INFO: loaded from: classes6.dex */
public final class b50 {
    public final String a;
    public final String b;
    public final String c;
    public final defpackage.cl4 d = new fh8(new al5(this, 3));

    public b50(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.a + (this.b.length() > 0 ? defpackage.bj.c("#", this.b) : "") + "#" + this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b50)) {
            return false;
        }
        b50 b50Var = (b50) obj;
        return defpackage.aa4.e(this.a, b50Var.a) && defpackage.aa4.e(this.b, b50Var.b) && defpackage.aa4.e(this.c, b50Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + l4.a(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return (String) this.d.getValue();
    }

    public static final String a(b50 b50Var) {
        return b50Var.a();
    }
}
