package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ca8 implements df4<String> {
    public static final ca8 a = new ca8();
    public static final fg6 b = new fg6("kotlin.String", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return ud2Var.decodeString();
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        String str = (String) obj;
        str.getClass();
        ux2Var.encodeString(str);
    }
}
