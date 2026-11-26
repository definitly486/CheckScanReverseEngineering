package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z74 implements df4<Integer> {
    public static final z74 a = new z74();
    public static final fg6 b = new fg6("kotlin.Int", dg6.f.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Integer.valueOf(ud2Var.decodeInt());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeInt(((Number) obj).intValue());
    }
}
