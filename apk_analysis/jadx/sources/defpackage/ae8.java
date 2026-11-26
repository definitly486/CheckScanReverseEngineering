package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ae8 implements pz3 {
    public final int a;
    public final int b;
    public final String c;
    public final boolean d;

    public ae8(String str, int i, int i2, boolean z) {
        str.getClass();
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ae8)) {
            return false;
        }
        ae8 ae8Var = (ae8) obj;
        return this.a == ae8Var.a && this.b == ae8Var.b && aa4.e(this.c, ae8Var.c) && this.d == ae8Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + zg.b(ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.b);
    }

    public final String toString() {
        StringBuilder sbF = bg.f(this.a, this.b, "SupportChildQuestionViewModel(questionId=", ", childId=", ", title=");
        sbF.append(this.c);
        sbF.append(", isExpanded=");
        sbF.append(this.d);
        sbF.append(")");
        return sbF.toString();
    }
}
