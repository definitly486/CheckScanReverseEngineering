package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dp {
    public final t5 a;
    public final e4 b;
    public final bf5 c;
    public final b8 d;

    public dp(t5 t5Var, e4 e4Var, bf5 bf5Var, b8 b8Var) {
        this.a = t5Var;
        this.b = e4Var;
        this.c = bf5Var;
        this.d = b8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dp)) {
            return false;
        }
        dp dpVar = (dp) obj;
        return defpackage.aa4.e(this.a, dpVar.a) && defpackage.aa4.e(this.b, dpVar.b) && defpackage.aa4.e(this.c, dpVar.c) && defpackage.aa4.e(this.d, dpVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdLoadingModule(adLoadingPhasesManager=" + this.a + ", adConfiguration=" + this.b + ", sdkEnvironmentModule=" + this.c + ", adQualityVerifierController=" + this.d + ")";
    }
}
