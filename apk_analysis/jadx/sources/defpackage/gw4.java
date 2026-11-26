package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gw4 implements df4<Long> {
    public static final gw4 a = new gw4();
    public static final fg6 b = new fg6("kotlin.Long", dg6.g.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Long.valueOf(ud2Var.decodeLong());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeLong(((Number) obj).longValue());
    }
}
