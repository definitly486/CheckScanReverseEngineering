package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fc1 implements pz3 {
    public final int a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

    public fc1(int i, String str, boolean z, boolean z2, boolean z3) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = z3;
    }

    public static fc1 d(fc1 fc1Var, boolean z) {
        int i = fc1Var.a;
        String str = fc1Var.b;
        boolean z2 = fc1Var.c;
        boolean z3 = fc1Var.e;
        fc1Var.getClass();
        str.getClass();
        return new fc1(i, str, z2, z, z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fc1)) {
            return false;
        }
        fc1 fc1Var = (fc1) obj;
        return this.a == fc1Var.a && aa4.e(this.b, fc1Var.b) && this.c == fc1Var.c && this.d == fc1Var.d && this.e == fc1Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.d + this.c + this.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "CheckboxTaskStepsViewModel(id=", ", text=", this.b, ", enableAllCheckboxes=");
        sbE.append(this.c);
        sbE.append(", isSelected=");
        sbE.append(this.d);
        sbE.append(", enabled=");
        return dh.e(sbE, this.e, ")");
    }
}
