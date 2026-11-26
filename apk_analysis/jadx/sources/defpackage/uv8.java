package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class uv8 implements df4<sv8> {
    public static final uv8 a = new uv8();
    public static final fg6 b = rp7.a("kotlinx.datetime.TimeZone", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        sv8.a aVar = sv8.Companion;
        String strDecodeString = ud2Var.decodeString();
        aVar.getClass();
        return sv8.a.a(strDecodeString);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        sv8 sv8Var = (sv8) obj;
        sv8Var.getClass();
        String id = sv8Var.a.getId();
        id.getClass();
        ux2Var.encodeString(id);
    }
}
