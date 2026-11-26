package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class gv6 {

    @bq7(TtmlNode.ATTR_ID)
    private final long a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String b;

    public gv6(long j, String str) {
        str.getClass();
        this.a = j;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gv6)) {
            return false;
        }
        gv6 gv6Var = (gv6) obj;
        return this.a == gv6Var.a && aa4.e(this.b, gv6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "QrInfoFrom(id=", ", type=", this.b);
        sbD.append(")");
        return sbD.toString();
    }
}
