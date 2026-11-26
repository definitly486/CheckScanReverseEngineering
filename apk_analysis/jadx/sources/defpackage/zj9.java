package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class zj9 {

    @bq7("program_id")
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("icon_url")
    private final String c;

    public zj9(int i, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final String a() {
        return this.c;
    }

    public final int b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zj9)) {
            return false;
        }
        zj9 zj9Var = (zj9) obj;
        return this.a == zj9Var.a && aa4.e(this.b, zj9Var.b) && aa4.e(this.c, zj9Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        return me0.d(ng.e(i, "WithdrawalPromo(program_id=", ", title=", str, ", icon_url="), this.c, ")");
    }
}
