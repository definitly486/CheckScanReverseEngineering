package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zn6 {
    public final String a;
    public final String b;
    public final String c;

    public zn6(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zn6)) {
            return false;
        }
        zn6 zn6Var = (zn6) obj;
        return this.a.equals(zn6Var.a) && this.b.equals(zn6Var.b) && this.c.equals(zn6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return me0.d(ad2.d("PromoInfo(backgroundColor=", this.a, ", text=", this.b, ", textColor="), this.c, ")");
    }
}
