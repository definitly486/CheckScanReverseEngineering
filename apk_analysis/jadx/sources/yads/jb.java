package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class jb {
    public final int a;
    public final int b;

    public jb(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jb)) {
            return false;
        }
        jb jbVar = (jb) obj;
        return this.a == jbVar.a && this.b == jbVar.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return defpackage.ln.c(this.a, this.b, "Params(maxLines=", ", minHiddenLines=", ")");
    }
}
