package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ld0 {
    public final String a;
    public final String b;
    public final String c;

    public ld0(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld0)) {
            return false;
        }
        ld0 ld0Var = (ld0) obj;
        return defpackage.aa4.e(this.a, ld0Var.a) && defpackage.aa4.e(this.b, ld0Var.b) && defpackage.aa4.e(this.c, ld0Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return defpackage.me0.d(defpackage.ad2.d("DebugPanelAdNetworkSettingsData(pageId=", str, ", appReviewStatus=", str2, ", appAdsTxt="), this.c, ")");
    }
}
