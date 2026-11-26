package yads;

import defpackage.xg8;

/* JADX INFO: loaded from: classes6.dex */
public final class b30 extends s20 {
    public static final b30 e = new b30();
    public static final String f = "setColorRed";

    public b30() {
        super(new xg8(1));
    }

    public static final l20 a(l20 l20Var, double d) {
        int i = l20Var.a >>> 24;
        int iA = u20.a(d);
        int i2 = l20Var.a;
        return new l20((i2 & 255) | (iA << 16) | (i << 24) | (((i2 >> 8) & 255) << 8));
    }

    @Override // yads.u13
    public final String c() {
        return f;
    }
}
