package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class kn0 {
    public final String a;
    public final String b;
    public final String c;

    public kn0(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && kn0.class == obj.getClass()) {
            kn0 kn0Var = (kn0) obj;
            if (u56.a(this.a, kn0Var.a) && u56.a(this.b, kn0Var.b) && u56.a(this.c, kn0Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
