package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pb1 implements pz3 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public pb1(String str, boolean z, boolean z2, boolean z3) {
        str.getClass();
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pb1)) {
            return false;
        }
        pb1 pb1Var = (pb1) obj;
        return aa4.e(this.a, pb1Var.a) && this.b == pb1Var.b && this.c == pb1Var.c && this.d == pb1Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, "CLAIM_FINAL_BUTTON");
    }

    public final String toString() {
        StringBuilder sbB = p2.b("CheckboxTaskStepsButtonViewModel(title=", this.a, ", isEnabled=", ", isLoading=", this.b);
        sbB.append(this.c);
        sbB.append(", isRegistrationRequired=");
        sbB.append(this.d);
        sbB.append(")");
        return sbB.toString();
    }
}
