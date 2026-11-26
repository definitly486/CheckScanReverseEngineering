package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class lw7 {
    public final String a;
    public final Integer b;
    public final int c;
    public final int d;

    public lw7(Integer num, String str, int i, int i2) {
        str.getClass();
        this.a = str;
        this.b = num;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lw7)) {
            return false;
        }
        lw7 lw7Var = (lw7) obj;
        return aa4.e(this.a, lw7Var.a) && aa4.e(this.b, lw7Var.b) && this.c == lw7Var.c && this.d == lw7Var.d;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        return Integer.hashCode(this.d) + ej0.b(this.c, (iHashCode + (num == null ? 0 : num.hashCode())) * 31, 31);
    }

    public final String toString() {
        return "ShowcaseImpression(block=" + this.a + ", itemId=" + this.b + ", position=" + this.c + ", listSize=" + this.d + ")";
    }
}
