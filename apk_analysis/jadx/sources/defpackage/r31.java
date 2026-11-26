package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class r31 {
    public final String a;
    public final String b;
    public final String c;

    public r31(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r31)) {
            return false;
        }
        r31 r31Var = (r31) obj;
        return this.a.equals(r31Var.a) && this.b.equals(r31Var.b) && this.c.equals(r31Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return me0.d(ad2.d("CardButton(title=", this.a, ", buttonText=", this.b, ", url="), this.c, ")");
    }
}
