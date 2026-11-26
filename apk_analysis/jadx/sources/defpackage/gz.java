package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gz {
    public final hz a;
    public final String b;
    public final ry c;
    public final d29<?, byte[]> d;
    public final iy2 e;

    public gz(hz hzVar, String str, ry ryVar, d29 d29Var, iy2 iy2Var) {
        this.a = hzVar;
        this.b = str;
        this.c = ryVar;
        this.d = d29Var;
        this.e = iy2Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gz)) {
            return false;
        }
        gz gzVar = (gz) obj;
        return this.a.equals(gzVar.a) && this.b.equals(gzVar.b) && this.c.equals(gzVar.c) && this.d.equals(gzVar.d) && this.e.equals(gzVar.e);
    }

    public final int hashCode() {
        return this.e.hashCode() ^ ((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003);
    }

    public final String toString() {
        return "SendRequest{transportContext=" + this.a + ", transportName=" + this.b + ", event=" + this.c + ", transformer=" + this.d + ", encoding=" + this.e + "}";
    }
}
