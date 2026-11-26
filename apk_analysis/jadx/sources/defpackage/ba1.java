package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ba1 implements df4<Character> {
    public static final ba1 a = new ba1();
    public static final fg6 b = new fg6("kotlin.Char", dg6.c.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        return Character.valueOf(ud2Var.decodeChar());
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        ux2Var.encodeChar(((Character) obj).charValue());
    }
}
