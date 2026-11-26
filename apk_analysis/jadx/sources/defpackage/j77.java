package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j77 implements pz3 {
    public final String a;
    public final String b;

    public j77(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j77)) {
            return false;
        }
        j77 j77Var = (j77) obj;
        return aa4.e(this.a, j77Var.a) && aa4.e(this.b, j77Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("RewardedMultiTaskHeaderViewModel(title=", this.a, ", iconUrl=", this.b, ")");
    }
}
