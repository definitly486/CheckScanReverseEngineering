package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class ic {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    public ic(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ic) && aa4.e(this.a, ((ic) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("AlfaRegisterCompleteResponse(link=", this.a, ")");
    }
}
