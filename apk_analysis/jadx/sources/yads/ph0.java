package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ph0 extends uh0 {
    public final String a;

    public ph0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ph0) && defpackage.aa4.e(this.a, ((ph0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Header(text=", this.a, ")");
    }
}
