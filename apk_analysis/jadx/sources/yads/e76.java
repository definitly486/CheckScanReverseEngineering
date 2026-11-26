package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e76 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public e76(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e76)) {
            return false;
        }
        e76 e76Var = (e76) obj;
        return defpackage.aa4.e(this.a, e76Var.a) && defpackage.aa4.e(this.b, e76Var.b) && defpackage.aa4.e(this.c, e76Var.c) && defpackage.aa4.e(this.d, e76Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.dg.c(defpackage.ad2.d("VariableModel(name=", str, ", path=", str2, ", type="), this.c, ", value=", this.d, ")");
    }
}
