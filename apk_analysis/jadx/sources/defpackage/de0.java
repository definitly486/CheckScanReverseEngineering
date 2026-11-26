package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class de0 implements l37 {
    public final mb4 b;

    public /* synthetic */ de0(mb4 mb4Var) {
        this.b = mb4Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof de0) {
            return this.b.equals(((de0) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "BaseRequestDelegate(job=" + this.b + ")";
    }
}
