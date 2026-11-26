package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sz3 extends tz3 {
    public final String a;

    public sz3(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sz3) && defpackage.aa4.e(this.a, ((sz3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Url(url=", this.a, ")");
    }
}
