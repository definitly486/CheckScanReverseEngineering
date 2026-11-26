package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lq6 implements pz3 {
    public final String a;

    public lq6(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lq6) && aa4.e(this.a, ((lq6) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return me0.c("PromocodeStepViewModel(step=", this.a, ")");
    }
}
