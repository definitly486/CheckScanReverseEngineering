package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v99 {

    @bq7("isPhoneValid")
    private final boolean a;

    public v99(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v99) && this.a == ((v99) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return l2.c("UserInfoResponse(phoneVerification=", ")", this.a);
    }
}
