package defpackage;

import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class wt0 {

    @bq7(DynamicLink.Builder.KEY_LINK)
    private final String a;

    @bq7("regRequiredImageUrl")
    private final String b;

    @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
    private final a c;

    public enum a {
        REG_REQUIRED
    }

    public wt0(String str, String str2, a aVar) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final a c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wt0)) {
            return false;
        }
        wt0 wt0Var = (wt0) obj;
        return aa4.e(this.a, wt0Var.a) && aa4.e(this.b, wt0Var.b) && this.c == wt0Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.c;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        StringBuilder sbD = ad2.d("BrandlinkResponse(link=", str, ", regRequiredImageUrl=", str2, ", state=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
