package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pl6 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;

    public pl6(String str, String str2, String str3, String str4, boolean z) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pl6)) {
            return false;
        }
        pl6 pl6Var = (pl6) obj;
        return aa4.e(this.a, pl6Var.a) && aa4.e(this.b, pl6Var.b) && aa4.e(this.c, pl6Var.c) && aa4.e(this.d, pl6Var.d) && this.e == pl6Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.e + this.d + this.c + this.a;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        return Boolean.hashCode(this.e) + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return (byte) -128;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("ProfileInviteCodeViewModel(title=", this.a, ", inviteCode=", this.b, ", copyButtonText=");
        kv2.c(sbD, this.c, ", shareButtonText=", this.d, ", shareButtonLoading=");
        return dh.e(sbD, this.e, ")");
    }
}
