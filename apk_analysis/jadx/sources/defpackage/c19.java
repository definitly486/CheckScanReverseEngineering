package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c19 implements pz3 {
    public final String a;
    public final String b;

    public c19(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c19)) {
            return false;
        }
        c19 c19Var = (c19) obj;
        return aa4.e(this.a, c19Var.a) && aa4.e(this.b, c19Var.b);
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
        return "Limits";
    }

    public final String toString() {
        return n2.d("TransferSBPLimitsViewModel(withdrawalText=", this.a, ", limits=", this.b, ")");
    }
}
