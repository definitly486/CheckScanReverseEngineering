package defpackage;

import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class sd4 implements df4<pd4> {
    public static final sd4 a = new sd4();
    public static final op7 b = rp7.f("kotlinx.serialization.json.JsonPrimitive", dg6.i.a, new mp7[0]);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        kc4 kc4VarE = tc0.e(ud2Var);
        oc4 oc4VarA = kc4VarE.a();
        if (oc4VarA instanceof pd4) {
            return (pd4) oc4VarA;
        }
        throw new JsonDecodingException(yc4.c(-1, "Unexpected JSON element, expected JsonPrimitive, had " + x07.a(oc4VarA.getClass()), null, null, kc4VarE.b().a.h ? yc4.e(-1, oc4VarA.toString()).toString() : null));
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        pd4 pd4Var = (pd4) obj;
        pd4Var.getClass();
        tc0.f(ux2Var);
        if (pd4Var instanceof gd4) {
            ux2Var.encodeSerializableValue(id4.a, gd4.INSTANCE);
        } else {
            ux2Var.encodeSerializableValue(dd4.a, (cd4) pd4Var);
        }
    }
}
