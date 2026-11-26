package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xg5 implements s95 {
    public final int a;
    public final String b;

    public xg5(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xg5)) {
            return false;
        }
        xg5 xg5Var = (xg5) obj;
        return this.a == xg5Var.a && defpackage.aa4.e(this.b, xg5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.c9.d(this.a, "SdkReward(amount=", ", type=", this.b, ")");
    }
}
