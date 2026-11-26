package defpackage;

import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class id4 implements df4<gd4> {
    public static final id4 a = new id4();
    public static final op7 b = rp7.f("kotlinx.serialization.json.JsonNull", sp7.b.a, new mp7[0]);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        tc0.e(ud2Var);
        if (ud2Var.decodeNotNullMark()) {
            throw new JsonDecodingException(yc4.c(-1, "Expected 'null' literal", null, null, null));
        }
        ud2Var.decodeNull();
        return gd4.INSTANCE;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ((gd4) obj).getClass();
        tc0.f(ux2Var);
        ux2Var.encodeNull();
    }
}
