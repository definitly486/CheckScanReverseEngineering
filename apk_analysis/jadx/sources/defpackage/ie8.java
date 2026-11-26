package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ie8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("blocks")
    private final List<fe8> c;

    @bq7("button")
    private final he8 d;

    public ie8(int i, String str, List<fe8> list, he8 he8Var) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = list;
        this.d = he8Var;
    }

    public final List<fe8> a() {
        return this.c;
    }

    public final he8 b() {
        return this.d;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ie8)) {
            return false;
        }
        ie8 ie8Var = (ie8) obj;
        return this.a == ie8Var.a && aa4.e(this.b, ie8Var.b) && aa4.e(this.c, ie8Var.c) && aa4.e(this.d, ie8Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        List<fe8> list = this.c;
        int iHashCode = (iB + (list == null ? 0 : list.hashCode())) * 31;
        he8 he8Var = this.d;
        return iHashCode + (he8Var != null ? he8Var.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        List<fe8> list = this.c;
        he8 he8Var = this.d;
        StringBuilder sbE = ng.e(i, "SupportFaqChildQuestionResponse(id=", ", title=", str, ", blocks=");
        sbE.append(list);
        sbE.append(", button=");
        sbE.append(he8Var);
        sbE.append(")");
        return sbE.toString();
    }
}
