package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class t9 {
    public final ue6 a;

    public t9(ue6 ue6Var) {
        this.a = ue6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t9) && defpackage.aa4.e(this.a, ((t9) obj).a);
    }

    public final int hashCode() {
        ue6 ue6Var = this.a;
        if (ue6Var == null) {
            return 0;
        }
        return ue6Var.hashCode();
    }

    public final String toString() {
        return "AdSettings(videoSelection=" + this.a + ")";
    }
}
