package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j49 implements df4<f49> {
    public static final j49 a = new j49();
    public static final i54 b = k54.a("kotlin.UByte", cx0.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return new f49(ud2Var.decodeInline(b).decodeByte());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeInline(b).encodeByte(((f49) obj).b);
    }
}
