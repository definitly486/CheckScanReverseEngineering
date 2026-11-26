package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wc3 implements df4<Float> {
    public static final wc3 a = new wc3();
    public static final fg6 b = new fg6("kotlin.Float", dg6.e.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Float.valueOf(ud2Var.decodeFloat());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeFloat(((Number) obj).floatValue());
    }
}
