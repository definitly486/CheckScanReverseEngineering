package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class y6 extends Throwable {
    public final String b;

    public y6(String str) {
        super(str);
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y6) && defpackage.aa4.e(this.b, ((y6) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return defpackage.me0.c("AdPresentationError(description=", this.b, ")");
    }
}
