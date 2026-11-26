package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class w05 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public w05(String str, String str2, String str3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w05)) {
            return false;
        }
        w05 w05Var = (w05) obj;
        return u56.a(this.a, w05Var.a) && u56.a(this.b, w05Var.b) && u56.a(this.c, w05Var.c) && u56.a(this.d, w05Var.d) && u56.a(this.e, w05Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
