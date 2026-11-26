package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ja {

    @bq7("shortLink")
    private final String a;

    public ja(String str) {
        str.getClass();
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ja) && aa4.e(this.a, ((ja) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("AdmitadShortLink(shortLinkUrl=", this.a, ")");
    }
}
