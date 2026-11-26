package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ee8 implements pz3 {
    public final String a;
    public final String b;

    public ee8(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ee8)) {
            return false;
        }
        ee8 ee8Var = (ee8) obj;
        return this.a.equals(ee8Var.a) && this.b.equals(ee8Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("SupportChildTextViewModel(id=", this.a, ", text=", this.b, ")");
    }
}
