package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bw2 {
    public final String a;

    public bw2(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof bw2) && defpackage.aa4.e(this.a, ((bw2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("FeedSessionData(value=", this.a, ")");
    }
}
