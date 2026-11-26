package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ec {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public ec(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ec)) {
            return false;
        }
        ec ecVar = (ec) obj;
        return aa4.e(this.a, ecVar.a) && aa4.e(this.b, ecVar.b) && aa4.e(this.c, ecVar.c) && aa4.e(this.d, ecVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        return dg.c(ad2.d("AlertModel(title=", this.a, ", description=", this.b, ", topButtonTitle="), this.c, ", bottomButtonTitle=", this.d, ")");
    }
}
