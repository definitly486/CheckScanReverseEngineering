package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rc9 {

    @bq7("isValid")
    private final boolean a;

    public rc9(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof rc9) && this.a == ((rc9) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("VerificationPropertiesResponse(isValid=", ")", this.a);
    }
}
