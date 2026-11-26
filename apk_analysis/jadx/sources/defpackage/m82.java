package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m82 implements so8 {
    public final String a;
    public final String b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;

    public m82(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m82)) {
            return false;
        }
        m82 m82Var = (m82) obj;
        return aa4.e(this.a, m82Var.a) && aa4.e(this.b, m82Var.b) && this.c == m82Var.c && this.d == m82Var.d && this.e == m82Var.e && this.f == m82Var.f && this.g == m82Var.g;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d + this.e + this.f + this.g;
    }

    public final int hashCode() {
        return Integer.hashCode(this.g) + ej0.b(this.f, ej0.b(this.e, ej0.b(this.d, ej0.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31), 31), 31), 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("DailyTaskViewModel(title=", this.a, ", value=", this.b, ", titleColor=");
        gg.e(sbD, this.c, ", valueColor=", this.d, ", backgroundColor=");
        gg.e(sbD, this.e, ", hexagon=", this.f, ", strokeColor=");
        return l2.e(sbD, ")", this.g);
    }
}
