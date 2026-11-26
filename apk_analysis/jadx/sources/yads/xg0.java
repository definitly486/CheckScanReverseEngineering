package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xg0 implements ah0 {
    public final rh0 a;

    public xg0(rh0 rh0Var) {
        this.a = rh0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xg0) && defpackage.aa4.e(this.a, ((xg0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "OnMediationNetworkClick(uiUnit=" + this.a + ")";
    }
}
