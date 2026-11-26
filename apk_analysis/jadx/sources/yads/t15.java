package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class t15 {
    public final int a;
    public final boolean b;

    public t15(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && t15.class == obj.getClass()) {
            t15 t15Var = (t15) obj;
            if (this.a == t15Var.a && this.b == t15Var.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a * 31) + (this.b ? 1 : 0);
    }
}
