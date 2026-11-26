package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class le8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("questions")
    private final List<ke8> c;

    public le8(int i, String str, List<ke8> list) {
        str.getClass();
        list.getClass();
        this.a = i;
        this.b = str;
        this.c = list;
    }

    public final int a() {
        return this.a;
    }

    public final List<ke8> b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof le8)) {
            return false;
        }
        le8 le8Var = (le8) obj;
        return this.a == le8Var.a && aa4.e(this.b, le8Var.b) && aa4.e(this.c, le8Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return bg.e(")", this.c, ng.e(this.a, "SupportFaqResponse(id=", ", title=", this.b, ", questions="));
    }
}
