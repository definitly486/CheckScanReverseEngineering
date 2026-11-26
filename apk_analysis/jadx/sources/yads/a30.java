package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a30 extends r20 {
    public static final a30 e = new a30();
    public static final String f = "getColorRed";

    public a30() {
        super(new defpackage.h04(5));
    }

    public static final int a(l20 l20Var) {
        return (l20Var.a >> 16) & 255;
    }

    @Override // yads.u13
    public final String c() {
        return f;
    }
}
