package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class uc {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    public /* synthetic */ uc(String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str);
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof uc) && aa4.e(this.a, ((uc) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("AlphaLinkResponse(link=", this.a, ")");
    }

    public uc(String str) {
        this.a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public uc() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
