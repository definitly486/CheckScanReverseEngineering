package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class du5 {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    public du5(String str) {
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
        return (obj instanceof du5) && aa4.e(this.a, ((du5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("OfferLandingLinkResponse(link=", this.a, ")");
    }
}
