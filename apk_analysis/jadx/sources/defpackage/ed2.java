package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ed2 implements Comparable<ed2> {
    public final int b;
    public final int c;

    public ed2(int i, int i2) {
        this.b = i;
        this.c = i2;
        if (i2 >= 0) {
            return;
        }
        c9.f(jh.b(i2, "Digits must be non-negative, but was "));
        throw null;
    }

    public final int a(int i) {
        int[] iArr = d31.d;
        int i2 = this.b;
        int i3 = this.c;
        if (i == i3) {
            return i2;
        }
        return i > i3 ? i2 * iArr[i - i3] : i2 / iArr[i3 - i];
    }

    @Override // java.lang.Comparable
    public final int compareTo(ed2 ed2Var) {
        ed2 ed2Var2 = ed2Var;
        ed2Var2.getClass();
        int iMax = Math.max(this.c, ed2Var2.c);
        return aa4.f(a(iMax), ed2Var2.a(iMax));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ed2)) {
            return false;
        }
        ed2 ed2Var = (ed2) obj;
        int iMax = Math.max(this.c, ed2Var.c);
        return aa4.f(a(iMax), ed2Var.a(iMax)) == 0;
    }

    public final int hashCode() {
        throw new UnsupportedOperationException("DecimalFraction is not supposed to be used as a hash key");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i = d31.d[this.c];
        int i2 = this.b;
        sb.append(i2 / i);
        sb.append('.');
        sb.append(ta8.T(String.valueOf((i2 % i) + i), "1"));
        return sb.toString();
    }
}
