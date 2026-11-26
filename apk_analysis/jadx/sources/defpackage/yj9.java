package defpackage;

import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public final class yj9 implements hk9 {
    public final String a;

    public yj9(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yj9) && aa4.e(this.a, ((yj9) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        UUID uuidRandomUUID = UUID.randomUUID();
        uuidRandomUUID.getClass();
        return uuidRandomUUID;
    }

    public final String toString() {
        return me0.c("WithdrawalMoreMethodsButtonViewModel(title=", this.a, ")");
    }
}
