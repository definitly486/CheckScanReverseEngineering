package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class y9 {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    public y9(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof y9) && aa4.e(this.a, ((y9) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("AdmitadLink(link=", this.a, ")");
    }
}
