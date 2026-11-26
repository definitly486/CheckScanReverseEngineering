package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f81 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("name")
    private final String b;

    @bq7("iconUrl")
    private final String c;

    @bq7("subCategories")
    private final List<f81> d;

    public f81(int i, String str, String str2, List<f81> list) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list;
    }

    public final int a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final List<f81> c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f81)) {
            return false;
        }
        f81 f81Var = (f81) obj;
        return this.a == f81Var.a && aa4.e(this.b, f81Var.b) && aa4.e(this.c, f81Var.c) && aa4.e(this.d, f81Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        List<f81> list = this.d;
        return iB + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        List<f81> list = this.d;
        StringBuilder sbE = ng.e(i, "CategoryFilterResponse(id=", ", name=", str, ", iconUrl=");
        sbE.append(str2);
        sbE.append(", subCategories=");
        sbE.append(list);
        sbE.append(")");
        return sbE.toString();
    }
}
