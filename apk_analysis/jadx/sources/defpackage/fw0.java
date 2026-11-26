package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fw0 {
    public final Integer a;
    public final String b;
    public final Integer c;

    public fw0(String str, Integer num, Integer num2) {
        this.a = num;
        this.b = str;
        this.c = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw0)) {
            return false;
        }
        fw0 fw0Var = (fw0) obj;
        return this.a.equals(fw0Var.a) && aa4.e(this.b, fw0Var.b) && aa4.e(this.c, fw0Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.c;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return "ButtonSheetBanner(titleColor=" + this.a + ", title=" + this.b + ", backgroundColor=" + this.c + ")";
    }
}
