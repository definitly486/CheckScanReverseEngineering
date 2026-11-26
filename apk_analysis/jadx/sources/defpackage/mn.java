package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mn {

    @bq7("isTest")
    private final boolean a;

    @bq7("minRegisterAmount")
    private final long b;

    @bq7("minWithdrawAmount")
    private final long c;

    @bq7("androidSchemes")
    private final List<String> d;

    public /* synthetic */ mn(boolean z, long j, long j2, List list, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? kx2.b : list);
    }

    public final List<String> a() {
        return this.d;
    }

    public final long b() {
        return this.b;
    }

    public final boolean c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mn)) {
            return false;
        }
        mn mnVar = (mn) obj;
        return this.a == mnVar.a && this.b == mnVar.b && this.c == mnVar.c && aa4.e(this.d, mnVar.d);
    }

    public final int hashCode() {
        int iB = vg.b(vg.b(Boolean.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        List<String> list = this.d;
        return iB + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        boolean z = this.a;
        long j = this.b;
        long j2 = this.c;
        List<String> list = this.d;
        StringBuilder sb = new StringBuilder("ApiBankAlphaResponse(isTest=");
        sb.append(z);
        sb.append(", minRegisterAmount=");
        sb.append(j);
        dq.d(sb, ", minWithdrawAmount=", j2, ", androidSchemes=");
        return bg.e(")", list, sb);
    }

    public mn(boolean z, long j, long j2, List<String> list) {
        this.a = z;
        this.b = j;
        this.c = j2;
        this.d = list;
    }

    public mn() {
        this(false, 0L, 0L, null, 15, null);
    }
}
