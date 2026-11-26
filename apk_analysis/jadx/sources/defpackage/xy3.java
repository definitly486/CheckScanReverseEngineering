package defpackage;

import androidx.autofill.HintConstants;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class xy3 extends ys6 {
    public static final /* synthetic */ int g = 0;
    public final InetSocketAddress b;
    public final InetSocketAddress c;
    public final Map<String, String> d;
    public final String e;
    public final String f;

    public xy3(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) {
        Map<String, String> map = Collections.EMPTY_MAP;
        o8.q("The proxy address %s is not resolved", !inetSocketAddress.isUnresolved(), inetSocketAddress);
        this.b = inetSocketAddress;
        this.c = inetSocketAddress2;
        this.d = map;
        this.e = str;
        this.f = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof xy3)) {
            return false;
        }
        xy3 xy3Var = (xy3) obj;
        if (!this.b.equals(xy3Var.b) || !this.c.equals(xy3Var.c)) {
            return false;
        }
        Map map = Collections.EMPTY_MAP;
        return Objects.equals(map, map) && Objects.equals(this.e, xy3Var.e) && Objects.equals(this.f, xy3Var.f);
    }

    public final int hashCode() {
        return Objects.hash(this.b, this.c, this.e, this.f, Collections.EMPTY_MAP);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.b, "proxyAddr");
        aVarB.d(this.c, "targetAddr");
        aVarB.d(Collections.EMPTY_MAP, "headers");
        aVarB.d(this.e, HintConstants.AUTOFILL_HINT_USERNAME);
        aVarB.c("hasPassword", this.f != null);
        return aVarB.toString();
    }
}
