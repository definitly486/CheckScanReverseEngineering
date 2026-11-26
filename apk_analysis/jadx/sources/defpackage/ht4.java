package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ht4 implements df4<ct4> {
    public static final ht4 a = new ht4();
    public static final fg6 b = rp7.a("kotlinx.datetime.LocalDate", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return ct4.a.a(ct4.Companion, ud2Var.decodeString());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ct4 ct4Var = (ct4) obj;
        ct4Var.getClass();
        ux2Var.encodeString(ct4Var.toString());
    }
}
