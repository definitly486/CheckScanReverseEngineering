package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kd {
    public final id a;
    public final id b;
    public final boolean c;
    public final String d;

    public kd(id idVar, id idVar2, boolean z, String str) {
        this.a = idVar;
        this.b = idVar2;
        this.c = z;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kd)) {
            return false;
        }
        kd kdVar = (kd) obj;
        return defpackage.aa4.e(this.a, kdVar.a) && defpackage.aa4.e(this.b, kdVar.b) && this.c == kdVar.c && defpackage.aa4.e(this.d, kdVar.d);
    }

    public final int hashCode() {
        id idVar = this.a;
        int iHashCode = (idVar == null ? 0 : idVar.hashCode()) * 31;
        id idVar2 = this.b;
        int iA = m7.a((iHashCode + (idVar2 == null ? 0 : idVar2.hashCode())) * 31, 31, this.c);
        String str = this.d;
        return iA + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "AdvertisingInfoHolder(gmsAdvertisingInfo=" + this.a + ", hmsAdvertisingInfo=" + this.b + ", gmsAdvertisingReset=" + this.c + ", appSetId=" + this.d + ")";
    }
}
