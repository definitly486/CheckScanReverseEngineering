package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p20 implements pz3 {
    public final String a;
    public final boolean b;
    public final int c;

    public p20(int i, String str, boolean z) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p20)) {
            return false;
        }
        p20 p20Var = (p20) obj;
        return aa4.e(this.a, p20Var.a) && this.b == p20Var.b && this.c == p20Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Boolean.valueOf(this.b);
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return (byte) 127;
    }

    public final String toString() {
        return l2.e(p2.b("BalanceExpandButtonViewModel(title=", this.a, ", isExpand=", ", iconRes=", this.b), ")", this.c);
    }
}
