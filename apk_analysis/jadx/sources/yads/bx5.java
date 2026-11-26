package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class bx5 {
    public final l15 a;
    public final b3 b;
    public final ek0 c;
    public final y00 d;
    public final l10 e;

    public bx5(l15 l15Var, b3 b3Var, ek0 ek0Var, y00 y00Var, l10 l10Var) {
        this.a = l15Var;
        this.b = b3Var;
        this.c = ek0Var;
        this.d = y00Var;
        this.e = l10Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bx5)) {
            return false;
        }
        bx5 bx5Var = (bx5) obj;
        return defpackage.aa4.e(this.a, bx5Var.a) && defpackage.aa4.e(this.b, bx5Var.b) && defpackage.aa4.e(this.c, bx5Var.c) && defpackage.aa4.e(this.d, bx5Var.d) && defpackage.aa4.e(this.e, bx5Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TimeProviderContainer(progressIncrementer=" + this.a + ", adBlockDurationProvider=" + this.b + ", defaultContentDelayProvider=" + this.c + ", closableAdChecker=" + this.d + ", closeTimerProgressIncrementer=" + this.e + ")";
    }

    public /* synthetic */ bx5(l15 l15Var, b3 b3Var, ek0 ek0Var, y00 y00Var) {
        this(l15Var, b3Var, ek0Var, y00Var, new l10());
    }
}
