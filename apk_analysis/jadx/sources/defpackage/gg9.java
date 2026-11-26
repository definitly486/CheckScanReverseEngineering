package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gg9 {
    public final String a;

    public gg9(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gg9) && this.a.equals(((gg9) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("OpenIntentScheme(url=", this.a, ")");
    }
}
