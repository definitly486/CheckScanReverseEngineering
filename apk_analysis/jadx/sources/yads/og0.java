package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class og0 {
    public final String a;
    public final qg0 b;

    public og0(String str, qg0 qg0Var) {
        this.a = str;
        this.b = qg0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof og0)) {
            return false;
        }
        og0 og0Var = (og0) obj;
        return defpackage.aa4.e(this.a, og0Var.a) && defpackage.aa4.e(this.b, og0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelSdkIntegrationData(sdkVersion=" + this.a + ", sdkIntegrationStatusData=" + this.b + ")";
    }
}
