package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ld5 implements pz3 {
    public final long a;
    public boolean b;
    public final boolean c;

    public ld5(long j, boolean z, boolean z2) {
        this.a = j;
        this.b = z;
        this.c = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld5)) {
            return false;
        }
        ld5 ld5Var = (ld5) obj;
        return this.a == ld5Var.a && this.b == ld5Var.b && this.c == ld5Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Long.valueOf(this.a);
    }

    public final int hashCode() {
        return Integer.hashCode(-1) + tg.c(tg.c(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        return "MonthViewModel(name=" + this.a + ", selectItem=" + this.b + ", futureMonth=" + this.c + ", position=-1)";
    }
}
