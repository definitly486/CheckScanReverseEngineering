package defpackage;

import kotlinx.serialization.SerializationException;

/* JADX INFO: loaded from: classes5.dex */
public final class hc3 implements df4<gc3> {
    public static final hc3 a = new hc3();
    public static final fg6 b = rp7.a("kotlinx.datetime.FixedOffsetTimeZone", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) throws Exception {
        ud2Var.getClass();
        sv8.a aVar = sv8.Companion;
        String strDecodeString = ud2Var.decodeString();
        aVar.getClass();
        sv8 sv8VarA = sv8.a.a(strDecodeString);
        if (sv8VarA instanceof gc3) {
            return (gc3) sv8VarA;
        }
        throw new SerializationException("Timezone identifier '" + sv8VarA + "' does not correspond to a fixed-offset timezone");
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        gc3 gc3Var = (gc3) obj;
        gc3Var.getClass();
        String id = gc3Var.a.getId();
        id.getClass();
        ux2Var.encodeString(id);
    }
}
