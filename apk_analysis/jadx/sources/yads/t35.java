package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class t35 extends u35 {
    public final s35 a;

    public t35(s35 s35Var) {
        this.a = s35Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t35) && this.a == ((t35) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Relative(type=" + this.a + ")";
    }
}
