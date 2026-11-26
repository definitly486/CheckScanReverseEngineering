package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ke8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("button")
    private final he8 d;

    @bq7("children")
    private final List<ie8> e;

    public ke8(int i, String str, String str2, he8 he8Var, List<ie8> list) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = he8Var;
        this.e = list;
    }

    public final he8 a() {
        return this.d;
    }

    public final List<ie8> b() {
        return this.e;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.c;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ke8)) {
            return false;
        }
        ke8 ke8Var = (ke8) obj;
        return this.a == ke8Var.a && aa4.e(this.b, ke8Var.b) && aa4.e(this.c, ke8Var.c) && aa4.e(this.d, ke8Var.d) && aa4.e(this.e, ke8Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        he8 he8Var = this.d;
        int iHashCode2 = (iHashCode + (he8Var == null ? 0 : he8Var.hashCode())) * 31;
        List<ie8> list = this.e;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        he8 he8Var = this.d;
        List<ie8> list = this.e;
        StringBuilder sbE = ng.e(i, "SupportFaqQuestionResponse(id=", ", title=", str, ", text=");
        sbE.append(str2);
        sbE.append(", button=");
        sbE.append(he8Var);
        sbE.append(", children=");
        return bg.e(")", list, sbE);
    }
}
