package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class st6 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final yt6 b;

    @bq7("advanceAvailable")
    private final boolean c;

    @bq7("campaignIconUrl")
    private final String d;

    @bq7("cashbackValue")
    private final long e;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String f;

    @bq7("text")
    private final String g;

    @bq7("imageGuideText")
    private final String h;

    @bq7("submitInfo")
    private final xt6 i;

    @bq7("bankImageInfo")
    private final qt6 j;

    @bq7("shopImageInfo")
    private final ut6 k;

    public /* synthetic */ st6(long j, yt6 yt6Var, boolean z, String str, long j2, String str2, String str3, String str4, xt6 xt6Var, qt6 qt6Var, ut6 ut6Var, int i, jh2 jh2Var) {
        this(j, yt6Var, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new String() : str, (i & 16) != 0 ? 0L : j2, (i & 32) != 0 ? new String() : str2, (i & 64) != 0 ? new String() : str3, (i & 128) != 0 ? new String() : str4, (i & 256) != 0 ? new xt6(null, null, null, 7, null) : xt6Var, (i & 512) != 0 ? new qt6(null, null, 3, null) : qt6Var, (i & 1024) != 0 ? new ut6(null, null, null, 7, null) : ut6Var);
    }

    public final boolean a() {
        return this.c;
    }

    public final qt6 b() {
        return this.j;
    }

    public final String c() {
        return this.d;
    }

    public final long d() {
        return this.e;
    }

    public final long e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof st6)) {
            return false;
        }
        st6 st6Var = (st6) obj;
        return this.a == st6Var.a && this.b == st6Var.b && this.c == st6Var.c && aa4.e(this.d, st6Var.d) && this.e == st6Var.e && aa4.e(this.f, st6Var.f) && aa4.e(this.g, st6Var.g) && aa4.e(this.h, st6Var.h) && aa4.e(this.i, st6Var.i) && aa4.e(this.j, st6Var.j) && aa4.e(this.k, st6Var.k);
    }

    public final String f() {
        return this.h;
    }

    public final ut6 g() {
        return this.k;
    }

    public final xt6 h() {
        return this.i;
    }

    public final int hashCode() {
        return this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + zg.b(zg.b(zg.b(vg.b(zg.b(tg.c((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31, 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h)) * 31)) * 31);
    }

    public final String i() {
        return this.g;
    }

    public final String j() {
        return this.f;
    }

    public final yt6 k() {
        return this.b;
    }

    public final String toString() {
        long j = this.a;
        yt6 yt6Var = this.b;
        boolean z = this.c;
        String str = this.d;
        long j2 = this.e;
        String str2 = this.f;
        String str3 = this.g;
        String str4 = this.h;
        xt6 xt6Var = this.i;
        qt6 qt6Var = this.j;
        ut6 ut6Var = this.k;
        StringBuilder sb = new StringBuilder("PurchaseResponse(id=");
        sb.append(j);
        sb.append(", type=");
        sb.append(yt6Var);
        sb.append(", advanceAvailable=");
        sb.append(z);
        sb.append(", campaignIconUrl=");
        sb.append(str);
        dq.d(sb, ", cashbackValue=", j2, ", title=");
        kv2.c(sb, str2, ", text=", str3, ", imageGuideText=");
        sb.append(str4);
        sb.append(", submitInfo=");
        sb.append(xt6Var);
        sb.append(", bankImageInfo=");
        sb.append(qt6Var);
        sb.append(", shopImageInfo=");
        sb.append(ut6Var);
        sb.append(")");
        return sb.toString();
    }

    public st6(long j, yt6 yt6Var, boolean z, String str, long j2, String str2, String str3, String str4, xt6 xt6Var, qt6 qt6Var, ut6 ut6Var) {
        yt6Var.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        xt6Var.getClass();
        qt6Var.getClass();
        ut6Var.getClass();
        this.a = j;
        this.b = yt6Var;
        this.c = z;
        this.d = str;
        this.e = j2;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = xt6Var;
        this.j = qt6Var;
        this.k = ut6Var;
    }
}
