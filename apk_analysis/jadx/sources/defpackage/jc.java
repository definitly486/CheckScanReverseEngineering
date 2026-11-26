package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class jc {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    public jc(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof jc) && aa4.e(this.a, ((jc) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("AlfaRegisterCompletedRequestBody(link=", this.a, ")");
    }
}
