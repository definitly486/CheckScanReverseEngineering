package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xf0 {
    public final String a;
    public final String b;

    public xf0(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xf0)) {
            return false;
        }
        xf0 xf0Var = (xf0) obj;
        return defpackage.aa4.e(this.a, xf0Var.a) && defpackage.aa4.e(this.b, xf0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return defpackage.n2.d("DebugPanelMediationAdapterParameterData(name=", this.a, ", value=", this.b, ")");
    }
}
