package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class hy5 implements iy5 {
    public final String a;

    public static String a(String str) {
        return defpackage.me0.c("Variable(name=", str, ")");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof hy5) && defpackage.aa4.e(this.a, ((hy5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return a(this.a);
    }
}
