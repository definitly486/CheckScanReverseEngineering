package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class t49 implements df4<p49> {
    public static final t49 a = new t49();
    public static final i54 b = k54.a("kotlin.ULong", gw4.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return new p49(ud2Var.decodeInline(b).decodeLong());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeInline(b).encodeLong(((p49) obj).b);
    }
}
