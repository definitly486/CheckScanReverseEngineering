package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class k90 implements pz3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public k90(String str, String str2, String str3, String str4, String str5, long j) {
        str.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k90)) {
            return false;
        }
        k90 k90Var = (k90) obj;
        return this.a == k90Var.a && aa4.e(this.b, k90Var.b) && this.c.equals(k90Var.c) && this.d.equals(k90Var.d) && this.e.equals(k90Var.e) && this.f.equals(k90Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.f + this.e + this.a;
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "BankCardViewModel(id=", ", bankName=", this.b);
        kv2.c(sbD, ", mainCondition=", this.c, ", subCondition=", this.d);
        kv2.c(sbD, ", bankIcon=", this.e, ", bankTitleColor=", this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
