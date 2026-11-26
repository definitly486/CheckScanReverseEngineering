package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jv1 implements pz3 {
    public final String a;
    public final String b;

    public jv1(String str, String str2) {
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jv1)) {
            return false;
        }
        jv1 jv1Var = (jv1) obj;
        return aa4.e(this.a, jv1Var.a) && aa4.e(this.b, jv1Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "conditions_button";
    }

    public final String toString() {
        return n2.d("ConditionsViewModel(text=", this.a, ", htmlText=", this.b, ")");
    }
}
