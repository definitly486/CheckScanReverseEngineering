package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jw7 implements df4<Short> {
    public static final jw7 a = new jw7();
    public static final fg6 b = new fg6("kotlin.Short", dg6.h.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Short.valueOf(ud2Var.decodeShort());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeShort(((Number) obj).shortValue());
    }
}
