package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j64 implements df4<h64> {
    public static final j64 a = new j64();
    public static final fg6 b = rp7.a("kotlinx.datetime.Instant", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return h64.a.a(h64.Companion, ud2Var.decodeString());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        h64 h64Var = (h64) obj;
        h64Var.getClass();
        ux2Var.encodeString(h64Var.toString());
    }
}
