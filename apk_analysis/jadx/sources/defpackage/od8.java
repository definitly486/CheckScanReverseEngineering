package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class od8 {
    public final String a;
    public final String b;

    public od8(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof od8)) {
            return false;
        }
        od8 od8Var = (od8) obj;
        return aa4.e(this.a, od8Var.a) && aa4.e(this.b, od8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("SupportButton(title=", this.a, ", url=", this.b, ")");
    }
}
