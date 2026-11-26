package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class by3 {
    public final tz3 a;
    public final float b;
    public final boolean c;

    public by3(tz3 tz3Var, float f, boolean z, int i) {
        tz3Var = (i & 1) != 0 ? null : tz3Var;
        z = (i & 4) != 0 ? false : z;
        this.a = tz3Var;
        this.b = f;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof by3)) {
            return false;
        }
        by3 by3Var = (by3) obj;
        return defpackage.aa4.e(this.a, by3Var.a) && Float.compare(this.b, by3Var.b) == 0 && this.c == by3Var.c;
    }

    public final int hashCode() {
        tz3 tz3Var = this.a;
        return Boolean.hashCode(this.c) + rp0.a((tz3Var == null ? 0 : tz3Var.hashCode()) * 31, this.b, 31);
    }

    public final String toString() {
        tz3 tz3Var = this.a;
        float f = this.b;
        boolean z = this.c;
        StringBuilder sb = new StringBuilder("Media(content=");
        sb.append(tz3Var);
        sb.append(", aspectRatio=");
        sb.append(f);
        sb.append(", hasVideo=");
        return defpackage.dh.e(sb, z, ")");
    }
}
