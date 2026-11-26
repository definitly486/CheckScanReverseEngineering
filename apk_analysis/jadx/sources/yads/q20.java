package yads;

import defpackage.wc7;

/* JADX INFO: loaded from: classes6.dex */
public final class q20 extends s20 {
    public static final q20 e = new q20();
    public static final String f = "setColorBlue";

    public q20() {
        super(new wc7(1));
    }

    public static final l20 a(l20 l20Var, double d) {
        int i = l20Var.a;
        int i2 = i >>> 24;
        int i3 = (i >> 16) & 255;
        return new l20((((i >> 8) & 255) << 8) | (i2 << 24) | (i3 << 16) | u20.a(d));
    }

    @Override // yads.u13
    public final String c() {
        return f;
    }
}
