package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class vh6 {

    @bq7("catId")
    private final int a;

    @bq7("datetime")
    private final Date b;

    @bq7(TtmlNode.ATTR_ID)
    private final long c;

    @bq7("name")
    private final String d;

    @bq7(FirebaseAnalytics.Param.PRICE)
    private final int e;

    @bq7("prodId")
    private final long f;

    @bq7(FirebaseAnalytics.Param.QUANTITY)
    private final String g;

    @bq7("recId")
    private final int h;

    @bq7("shopId")
    private final int i;

    @bq7("sum")
    private final int j;

    public vh6(int i, Date date, long j, String str, int i2, long j2, String str2, int i3, int i4, int i5) {
        date.getClass();
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = date;
        this.c = j;
        this.d = str;
        this.e = i2;
        this.f = j2;
        this.g = str2;
        this.h = i3;
        this.i = i4;
        this.j = i5;
    }

    public final long a() {
        return this.c;
    }

    public final String b() {
        return this.d;
    }

    public final int c() {
        return this.e;
    }

    public final int d() {
        return this.h;
    }
}
