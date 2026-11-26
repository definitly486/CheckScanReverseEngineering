package yads;

import defpackage.s2a;

/* JADX INFO: loaded from: classes6.dex */
public final class n20 extends s20 {
    public static final n20 e = new n20();
    public static final String f = "setColorAlpha";

    public n20() {
        super(new s2a());
    }

    public static final l20 a(l20 l20Var, double d) {
        int iA = u20.a(d);
        int i = l20Var.a;
        return new l20((i & 255) | (iA << 24) | (((i >> 16) & 255) << 16) | (((i >> 8) & 255) << 8));
    }

    @Override // yads.u13
    public final String c() {
        return f;
    }
}
