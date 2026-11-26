package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fg9 {
    public final String a;

    public fg9(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fg9) && this.a.equals(((fg9) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("OpenInExternalApp(url=", this.a, ")");
    }
}
