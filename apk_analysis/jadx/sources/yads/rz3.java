package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rz3 extends tz3 {
    public final String a;

    public rz3(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rz3) && defpackage.aa4.e(this.a, ((rz3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Html(html=", this.a, ")");
    }
}
