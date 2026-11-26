package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jf5 implements fx5 {
    public final fx5.a a;

    @bq7("slides")
    private final List<gx5> b;

    @bq7("return")
    private final boolean c;

    @bq7("showConfetti")
    private final Boolean d;

    public jf5(fx5.a aVar, List<gx5> list, boolean z, Boolean bool) {
        aVar.getClass();
        list.getClass();
        this.a = aVar;
        this.b = list;
        this.c = z;
        this.d = bool;
    }

    public final boolean a() {
        return this.c;
    }

    public final Boolean b() {
        return this.d;
    }

    public final List<gx5> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jf5)) {
            return false;
        }
        jf5 jf5Var = (jf5) obj;
        return this.a == jf5Var.a && aa4.e(this.b, jf5Var.b) && this.c == jf5Var.c && aa4.e(this.d, jf5Var.d);
    }

    public final int hashCode() {
        int iC = tg.c(e2.b(this.b, this.a.hashCode() * 31, 31), 31, this.c);
        Boolean bool = this.d;
        return iC + (bool == null ? 0 : bool.hashCode());
    }

    public final String toString() {
        return "MultiOnboardingSlideResponse(type=" + this.a + ", slides=" + this.b + ", canGoBack=" + this.c + ", showConfetti=" + this.d + ")";
    }

    public /* synthetic */ jf5(fx5.a aVar, List list, boolean z, Boolean bool, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? fx5.a.MULTI : aVar, list, z, bool);
    }
}
