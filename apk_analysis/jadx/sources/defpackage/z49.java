package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class z49 implements df4<v49> {
    public static final z49 a = new z49();
    public static final i54 b = k54.a("kotlin.UShort", jw7.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return new v49(ud2Var.decodeInline(b).decodeShort());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeInline(b).encodeShort(((v49) obj).b);
    }
}
