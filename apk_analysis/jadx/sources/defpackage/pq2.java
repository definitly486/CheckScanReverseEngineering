package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pq2 implements df4<Double> {
    public static final pq2 a = new pq2();
    public static final fg6 b = new fg6("kotlin.Double", dg6.d.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Double.valueOf(ud2Var.decodeDouble());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeDouble(((Number) obj).doubleValue());
    }
}
