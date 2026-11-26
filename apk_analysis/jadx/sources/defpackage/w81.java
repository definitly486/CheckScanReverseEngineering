package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class w81 {
    public final long a;
    public final boolean b;

    public w81(long j, boolean z) {
        this.a = j;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w81)) {
            return false;
        }
        w81 w81Var = (w81) obj;
        return this.a == w81Var.a && this.b == w81Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ChangeFavoriteData(id=" + this.a + ", isFavorite=" + this.b + ")";
    }
}
