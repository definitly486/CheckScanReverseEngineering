package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class f2 {
    public final d9 a;
    public final e4 b;
    public final h9 c;
    public final bf5 d;
    public final pg4 e;
    public final int f;
    public final en0 g;

    public f2(d9 d9Var, e4 e4Var, h9 h9Var, bf5 bf5Var, pg4 pg4Var, int i, en0 en0Var, int i2) {
        pg4Var = (i2 & 16) != 0 ? null : pg4Var;
        i = (i2 & 32) != 0 ? 0 : i;
        en0Var = (i2 & 64) != 0 ? null : en0Var;
        this.a = d9Var;
        this.b = e4Var;
        this.c = h9Var;
        this.d = bf5Var;
        this.e = pg4Var;
        this.f = i;
        this.g = en0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f2)) {
            return false;
        }
        f2 f2Var = (f2) obj;
        return defpackage.aa4.e(this.a, f2Var.a) && defpackage.aa4.e(this.b, f2Var.b) && defpackage.aa4.e(this.c, f2Var.c) && defpackage.aa4.e(this.d, f2Var.d) && defpackage.aa4.e(this.e, f2Var.e) && this.f == f2Var.f && defpackage.aa4.e(this.g, f2Var.g);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        pg4 pg4Var = this.e;
        int iA = i96.a(this.f, (iHashCode + (pg4Var == null ? 0 : pg4Var.hashCode())) * 31, 31);
        en0 en0Var = this.g;
        return iA + (en0Var != null ? en0Var.hashCode() : 0);
    }

    public final String toString() {
        return "AdActivityData(adResponse=" + this.a + ", adConfiguration=" + this.b + ", adResultReceiver=" + this.c + ", sdkEnvironmentModule=" + this.d + ", nativeAd=" + this.e + ", requestedOrientation=" + this.f + ", delegatedActivityLaunchInfo=" + this.g + ")";
    }
}
