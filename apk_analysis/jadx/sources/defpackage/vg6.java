package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class vg6 {

    @bq7(TtmlNode.ATTR_ID)
    private long a;

    @bq7("name")
    private String b;

    @bq7(FirebaseAnalytics.Param.PRICE)
    private int c;

    @bq7("catId")
    private int d;

    @bq7(FirebaseAnalytics.Param.QUANTITY)
    private final float e;

    @bq7("sum")
    private int f;

    @bq7("isPromotional")
    private boolean g;

    @bq7("prodId")
    private long h;

    @bq7("datetime")
    private String i;

    @bq7("shop")
    private lu7 j;

    @bq7("categoryName")
    private String k;

    public /* synthetic */ vg6(long j, String str, int i, int i2, float f, int i3, boolean z, long j2, String str2, lu7 lu7Var, String str3, int i4, jh2 jh2Var) {
        this(j, str, i, (i4 & 8) != 0 ? 0 : i2, f, i3, z, j2, str2, lu7Var, (i4 & 1024) != 0 ? null : str3);
    }

    public final int a() {
        return this.d;
    }

    public final String b() {
        return this.k;
    }

    public final long c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final int e() {
        return this.c;
    }

    public final long f() {
        return this.h;
    }

    public final float g() {
        return this.e;
    }

    public final int h() {
        return this.f;
    }

    public final void i(String str) {
        this.k = str;
    }

    public vg6(long j, String str, int i, int i2, float f, int i3, boolean z, long j2, String str2, lu7 lu7Var, String str3) {
        str.getClass();
        str2.getClass();
        lu7Var.getClass();
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = f;
        this.f = i3;
        this.g = z;
        this.h = j2;
        this.i = str2;
        this.j = lu7Var;
        this.k = str3;
    }
}
