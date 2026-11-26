package yads;

import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class y50 implements ds2 {
    public final List a;

    public y50(List list) {
        this.a = list;
    }

    @Override // yads.ds2
    public final List a(fs2 fs2Var) {
        return this.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof y50) && defpackage.aa4.e(this.a, ((y50) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() * 16;
    }

    @Override // yads.ds2
    public final tp0 a(fs2 fs2Var, nl3 nl3Var) {
        return tp0.a;
    }
}
