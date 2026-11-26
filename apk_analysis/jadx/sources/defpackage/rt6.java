package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rt6 {
    public final long a;
    public final yt6 b;
    public final boolean c;
    public final String d;
    public final long e;
    public final String f;
    public final String g;
    public final String h;
    public final vt6 i;

    public rt6(long j, yt6 yt6Var, boolean z, String str, long j2, String str2, String str3, String str4, vt6 vt6Var) {
        yt6Var.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        vt6Var.getClass();
        this.a = j;
        this.b = yt6Var;
        this.c = z;
        this.d = str;
        this.e = j2;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = vt6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rt6)) {
            return false;
        }
        rt6 rt6Var = (rt6) obj;
        return this.a == rt6Var.a && this.b == rt6Var.b && this.c == rt6Var.c && aa4.e(this.d, rt6Var.d) && this.e == rt6Var.e && aa4.e(this.f, rt6Var.f) && aa4.e(this.g, rt6Var.g) && aa4.e(this.h, rt6Var.h) && this.i == rt6Var.i;
    }

    public final int hashCode() {
        return Long.hashCode(0L) + ((this.i.hashCode() + zg.b(zg.b(zg.b(vg.b(zg.b(tg.c((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31, 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PurchaseModel(id=");
        sb.append(this.a);
        sb.append(", type=");
        sb.append(this.b);
        sb.append(", advanceAvailable=");
        sb.append(this.c);
        sb.append(", campaignIconUrl=");
        sb.append(this.d);
        dq.d(sb, ", cashbackValue=", this.e, ", title=");
        kv2.c(sb, this.f, ", text=", this.g, ", imageGuideText=");
        sb.append(this.h);
        sb.append(", status=");
        sb.append(this.i);
        sb.append(", nextShowTime=0)");
        return sb.toString();
    }
}
