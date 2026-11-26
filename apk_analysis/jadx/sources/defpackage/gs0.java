package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gs0 implements df4<Boolean> {
    public static final gs0 a = new gs0();
    public static final fg6 b = new fg6("kotlin.Boolean", dg6.a.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Boolean.valueOf(ud2Var.decodeBoolean());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeBoolean(((Boolean) obj).booleanValue());
    }
}
