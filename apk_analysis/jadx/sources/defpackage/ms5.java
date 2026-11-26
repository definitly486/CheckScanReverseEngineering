package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ms5 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("url")
    private final String b;

    @bq7("header")
    private final List<cv3> c;

    @bq7("method")
    private final String d;

    @bq7(TtmlNode.TAG_BODY)
    private final String e;

    @bq7("extra")
    private final String f;

    public /* synthetic */ ms5(int i, String str, List list, String str2, String str3, String str4, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? null : list, str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4);
    }

    public final String a() {
        return this.e;
    }

    public final String b() {
        return this.f;
    }

    public final List<cv3> c() {
        return this.c;
    }

    public final int d() {
        return this.a;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ms5)) {
            return false;
        }
        ms5 ms5Var = (ms5) obj;
        return this.a == ms5Var.a && aa4.e(this.b, ms5Var.b) && aa4.e(this.c, ms5Var.c) && aa4.e(this.d, ms5Var.d) && aa4.e(this.e, ms5Var.e) && aa4.e(this.f, ms5Var.f);
    }

    public final String f() {
        return this.b;
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        List<cv3> list = this.c;
        int iHashCode = (iB + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        List<cv3> list = this.c;
        String str2 = this.d;
        String str3 = this.e;
        String str4 = this.f;
        StringBuilder sbE = ng.e(i, "Ofd(id=", ", url=", str, ", headers=");
        sbE.append(list);
        sbE.append(", method=");
        sbE.append(str2);
        sbE.append(", body=");
        return dg.c(sbE, str3, ", extra=", str4, ")");
    }

    public ms5(int i, String str, List<cv3> list, String str2, String str3, String str4) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = list;
        this.d = str2;
        this.e = str3;
        this.f = str4;
    }
}
