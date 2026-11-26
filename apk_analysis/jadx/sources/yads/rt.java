package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rt {
    public final ee4 a;
    public final ch4 b;
    public final hm4 c;
    public final fm4 d;
    public final of4 e;
    public final yi4 f;
    public final lh4 g;
    public final bf5 h;
    public final sd4 i;
    public final ba j;

    public rt(ee4 ee4Var, ch4 ch4Var, hm4 hm4Var, fm4 fm4Var, of4 of4Var, yi4 yi4Var, lh4 lh4Var, bf5 bf5Var, sd4 sd4Var, ba baVar) {
        this.a = ee4Var;
        this.b = ch4Var;
        this.c = hm4Var;
        this.d = fm4Var;
        this.e = of4Var;
        this.f = yi4Var;
        this.g = lh4Var;
        this.h = bf5Var;
        this.i = sd4Var;
        this.j = baVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rt)) {
            return false;
        }
        rt rtVar = (rt) obj;
        return defpackage.aa4.e(this.a, rtVar.a) && defpackage.aa4.e(this.b, rtVar.b) && defpackage.aa4.e(this.c, rtVar.c) && defpackage.aa4.e(this.d, rtVar.d) && defpackage.aa4.e(this.e, rtVar.e) && defpackage.aa4.e(this.f, rtVar.f) && defpackage.aa4.e(this.g, rtVar.g) && defpackage.aa4.e(this.h, rtVar.h) && defpackage.aa4.e(this.i, rtVar.i) && this.j == rtVar.j;
    }

    public final int hashCode() {
        int iHashCode = (this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        sd4 sd4Var = this.i;
        return this.j.hashCode() + ((iHashCode + (sd4Var == null ? 0 : sd4Var.hashCode())) * 31);
    }

    public final String toString() {
        return "BinderConfiguration(nativeAdBlock=" + this.a + ", nativeValidator=" + this.b + ", nativeVisualBlock=" + this.c + ", nativeViewRenderer=" + this.d + ", nativeAdFactoriesProvider=" + this.e + ", forceImpressionConfigurator=" + this.f + ", adViewRenderingValidator=" + this.g + ", sdkEnvironmentModule=" + this.h + ", nativeData=" + this.i + ", adStructureType=" + this.j + ")";
    }
}
