package yads;

import defpackage.ofa;

/* JADX INFO: loaded from: classes6.dex */
public final class w20 extends s20 {
    public static final w20 e = new w20();
    public static final String f = "setColorGreen";

    public w20() {
        super(new ofa());
    }

    public static final l20 a(l20 l20Var, double d) {
        int i = l20Var.a;
        int i2 = i >>> 24;
        return new l20((l20Var.a & 255) | (u20.a(d) << 8) | (i2 << 24) | (((i >> 16) & 255) << 16));
    }

    @Override // yads.u13
    public final String c() {
        return f;
    }
}
