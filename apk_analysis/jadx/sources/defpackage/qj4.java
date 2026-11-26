package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qj4 extends wh4 {
    public final int c;
    public final boolean d;
    public final String e;
    public final int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qj4(String str, int i, int i2, boolean z) {
        super(str, i2);
        str.getClass();
        this.c = i;
        this.d = z;
        this.e = str;
        this.f = i2;
    }

    public static qj4 l(qj4 qj4Var, boolean z) {
        int i = qj4Var.c;
        String str = qj4Var.e;
        int i2 = qj4Var.f;
        qj4Var.getClass();
        str.getClass();
        return new qj4(str, i, i2, z);
    }

    @Override // defpackage.wh4
    public final int d() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qj4)) {
            return false;
        }
        qj4 qj4Var = (qj4) obj;
        return this.c == qj4Var.c && this.d == qj4Var.d && aa4.e(this.e, qj4Var.e) && this.f == qj4Var.f;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Boolean.valueOf(this.d);
    }

    @Override // defpackage.wh4
    public final String getTitle() {
        return this.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f) + zg.b(tg.c(Integer.hashCode(this.c) * 31, 31, this.d), 31, this.e);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.e;
    }

    public final String toString() {
        return "LandingRequestButtonViewModel(formId=" + this.c + ", isEnable=" + this.d + ", title=" + this.e + ", topSpace=" + this.f + ")";
    }
}
