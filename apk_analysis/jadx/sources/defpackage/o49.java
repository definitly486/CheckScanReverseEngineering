package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o49 implements df4<k49> {
    public static final o49 a = new o49();
    public static final i54 b = k54.a("kotlin.UInt", z74.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return new k49(ud2Var.decodeInline(b).decodeInt());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeInline(b).encodeInt(((k49) obj).b);
    }
}
