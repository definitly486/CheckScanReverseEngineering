package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class m83 {
    public final boolean a;
    public final n83 b;

    public m83(boolean z) {
        this.a = z;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m83)) {
            return false;
        }
        m83 m83Var = (m83) obj;
        return this.a == m83Var.a && defpackage.aa4.e(this.b, m83Var.b);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        n83 n83Var = this.b;
        return iHashCode + (n83Var == null ? 0 : n83Var.hashCode());
    }

    public final String toString() {
        return "HandledAction(shouldTrackClick=" + this.a + ", handledDeeplinkRender=" + this.b + ")";
    }

    public m83(boolean z, n83 n83Var) {
        this.a = z;
        this.b = n83Var;
    }
}
