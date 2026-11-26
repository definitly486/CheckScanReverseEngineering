package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pf5 implements pz3 {
    public final String a;
    public final boolean b;
    public final long c;
    public final boolean d;

    public pf5(String str, long j, boolean z, boolean z2) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = j;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pf5)) {
            return false;
        }
        pf5 pf5Var = (pf5) obj;
        return aa4.e(this.a, pf5Var.a) && this.b == pf5Var.b && this.c == pf5Var.c && this.d == pf5Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + vg.b(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbB = p2.b("MultiTaskButtonViewModel(title=", this.a, ", isEnabled=", ", delayMs=", this.b);
        sbB.append(this.c);
        sbB.append(", isLoading=");
        sbB.append(this.d);
        sbB.append(")");
        return sbB.toString();
    }
}
