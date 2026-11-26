package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class qg0 {
    public final pg0 a;
    public final List b;

    public qg0(pg0 pg0Var, List list) {
        this.a = pg0Var;
        this.b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qg0)) {
            return false;
        }
        qg0 qg0Var = (qg0) obj;
        return this.a == qg0Var.a && defpackage.aa4.e(this.b, qg0Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        List list = this.b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "DebugPanelSdkIntegrationStatusData(status=" + this.a + ", messages=" + this.b + ")";
    }
}
