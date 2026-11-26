package defpackage;

import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class dd4 implements df4<cd4> {
    public static final dd4 a = new dd4();
    public static final fg6 b = rp7.a("kotlinx.serialization.json.JsonLiteral", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        kc4 kc4VarE = tc0.e(ud2Var);
        oc4 oc4VarA = kc4VarE.a();
        if (oc4VarA instanceof cd4) {
            return (cd4) oc4VarA;
        }
        throw new JsonDecodingException(yc4.c(-1, "Unexpected JSON element, expected JsonLiteral, had " + x07.a(oc4VarA.getClass()), null, null, kc4VarE.b().a.h ? yc4.e(-1, oc4VarA.toString()).toString() : null));
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        cd4 cd4Var = (cd4) obj;
        cd4Var.getClass();
        String str = cd4Var.c;
        tc0.f(ux2Var);
        if (cd4Var.b) {
            ux2Var.encodeString(str);
            return;
        }
        Long lQ = qa8.q(str);
        if (lQ != null) {
            ux2Var.encodeLong(lQ.longValue());
            return;
        }
        p49 p49VarD = tm1.d(str);
        if (p49VarD != null) {
            ux2Var.encodeInline(t49.b).encodeLong(p49VarD.b);
            return;
        }
        Double dM = qa8.m(str);
        if (dM != null) {
            ux2Var.encodeDouble(dM.doubleValue());
            return;
        }
        Boolean boolE0 = ta8.e0(str);
        if (boolE0 != null) {
            ux2Var.encodeBoolean(boolE0.booleanValue());
        } else {
            ux2Var.encodeString(str);
        }
    }
}
