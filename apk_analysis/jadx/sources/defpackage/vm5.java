package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class vm5 {
    public final int a;
    public final long b;
    public final long c;
    public final pm5 d;
    public final b58 e;
    public final Object f;

    public /* synthetic */ vm5(int i, long j, long j2, pm5 pm5Var, int i2) {
        this((i2 & 1) != 0 ? 200 : i, (i2 & 2) != 0 ? 0L : j, (i2 & 4) != 0 ? 0L : j2, (i2 & 8) != 0 ? pm5.b : pm5Var, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vm5)) {
            return false;
        }
        vm5 vm5Var = (vm5) obj;
        return this.a == vm5Var.a && this.b == vm5Var.b && this.c == vm5Var.c && aa4.e(this.d, vm5Var.d) && aa4.e(this.e, vm5Var.e) && aa4.e(this.f, vm5Var.f);
    }

    public final int hashCode() {
        int iC = k.c(this.d.a, vg.b(vg.b(this.a * 31, 31, this.b), 31, this.c), 31);
        b58 b58Var = this.e;
        int iHashCode = (iC + (b58Var == null ? 0 : b58Var.hashCode())) * 31;
        Object obj = this.f;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkResponse(code=");
        sb.append(this.a);
        sb.append(", requestMillis=");
        sb.append(this.b);
        dq.d(sb, ", responseMillis=", this.c, ", headers=");
        sb.append(this.d);
        sb.append(", body=");
        sb.append(this.e);
        sb.append(", delegate=");
        return l2.d(sb, this.f, ")");
    }

    public vm5(int i, long j, long j2, pm5 pm5Var, b58 b58Var, Object obj) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = pm5Var;
        this.e = b58Var;
        this.f = obj;
    }

    public vm5() {
        this(0, 0L, 0L, null, 63);
    }
}
