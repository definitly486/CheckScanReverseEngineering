package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class uc4 implements df4<oc4> {
    public static final uc4 a = new uc4();
    public static final op7 b = rp7.e("kotlinx.serialization.json.JsonElement", ba6.b.a, new mp7[0], new jy2(1));

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return tc0.e(ud2Var).a();
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        oc4 oc4Var = (oc4) obj;
        oc4Var.getClass();
        tc0.f(ux2Var);
        if (oc4Var instanceof pd4) {
            ux2Var.encodeSerializableValue(sd4.a, oc4Var);
            return;
        }
        if (oc4Var instanceof jd4) {
            ux2Var.encodeSerializableValue(md4.a, oc4Var);
        } else if (oc4Var instanceof zb4) {
            ux2Var.encodeSerializableValue(cc4.a, oc4Var);
        } else {
            me0.e();
        }
    }
}
