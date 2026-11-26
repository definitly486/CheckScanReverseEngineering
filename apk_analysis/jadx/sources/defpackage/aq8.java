package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class aq8 {
    public final String a;
    public final String b;
    public final boolean c;

    public aq8(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aq8)) {
            return false;
        }
        aq8 aq8Var = (aq8) obj;
        return this.a.equals(aq8Var.a) && aa4.e(this.b, aq8Var.b) && this.c == aq8Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Boolean.hashCode(this.c) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return dh.e(ad2.d("TempUserData(phone=", this.a, ", inviteCode=", this.b, ", isSmsAllowed="), this.c, ")");
    }
}
