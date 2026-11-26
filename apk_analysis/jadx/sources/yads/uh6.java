package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uh6 {
    public final int a;
    public final String b;

    public uh6(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uh6)) {
            return false;
        }
        uh6 uh6Var = (uh6) obj;
        return this.a == uh6Var.a && defpackage.aa4.e(this.b, uh6Var.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return defpackage.c9.d(this.a, "VisibleAreaResult(area=", ", description=", this.b, ")");
    }
}
