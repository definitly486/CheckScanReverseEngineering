package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ui6 extends fn5 {
    public final long a;
    public final String b;
    public final int c;
    public final int d;

    public ui6(int i, int i2, long j, String str) {
        str.getClass();
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ui6)) {
            return false;
        }
        ui6 ui6Var = (ui6) obj;
        return this.a == ui6Var.a && aa4.e(this.b, ui6Var.b) && this.c == ui6Var.c && this.d == ui6Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ej0.b(this.c, zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "ProductViewModel(id=", ", name=", this.b);
        sbD.append(", price=");
        sbD.append(this.c);
        sbD.append(", receiptId=");
        sbD.append(this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
