package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class pn {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public pn(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pn)) {
            return false;
        }
        pn pnVar = (pn) obj;
        return defpackage.aa4.e(this.a, pnVar.a) && defpackage.aa4.e(this.b, pnVar.b) && defpackage.aa4.e(this.c, pnVar.c) && defpackage.aa4.e(this.d, pnVar.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.dg.c(defpackage.ad2.d("BackgroundColors(top=", str, ", right=", str2, ", left="), this.c, ", bottom=", this.d, ")");
    }
}
