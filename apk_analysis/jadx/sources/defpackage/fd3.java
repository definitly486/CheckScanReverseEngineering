package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fd3 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7("deeplink")
    private final String b;

    @bq7("imageUrl")
    private final String c;

    @bq7("locations")
    private final List<a> d;

    @bq7("isRegRequired")
    private final Boolean e;

    public enum a {
        BONUSES,
        RECEIPTS,
        PRODUCTS,
        BALANCE
    }

    /* JADX WARN: Multi-variable type inference failed */
    public fd3(long j, String str, String str2, List<? extends a> list, Boolean bool) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = list;
        this.e = bool;
    }

    public final String a() {
        return this.b;
    }

    public final long b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final List<a> d() {
        return this.d;
    }

    public final Boolean e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fd3)) {
            return false;
        }
        fd3 fd3Var = (fd3) obj;
        return this.a == fd3Var.a && aa4.e(this.b, fd3Var.b) && aa4.e(this.c, fd3Var.c) && aa4.e(this.d, fd3Var.d) && aa4.e(this.e, fd3Var.e);
    }

    public final int hashCode() {
        int iB = e2.b(this.d, zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31);
        Boolean bool = this.e;
        return iB + (bool == null ? 0 : bool.hashCode());
    }

    public final String toString() {
        long j = this.a;
        String str = this.b;
        String str2 = this.c;
        List<a> list = this.d;
        Boolean bool = this.e;
        StringBuilder sbD = ah.d(j, "FloatingButtonResponse(id=", ", deeplink=", str);
        sbD.append(", imageUrl=");
        sbD.append(str2);
        sbD.append(", locations=");
        sbD.append(list);
        sbD.append(", isRegRequired=");
        sbD.append(bool);
        sbD.append(")");
        return sbD.toString();
    }
}
