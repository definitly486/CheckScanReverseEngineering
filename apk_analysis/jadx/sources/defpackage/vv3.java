package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vv3 extends k15 {
    @Override // defpackage.k15
    public final boolean b(char c) {
        return Character.isLetterOrDigit(c) && ta8.J(Character.toUpperCase(c), 0, 6, "0123456789ABCDEF") != -1;
    }

    @Override // defpackage.k15
    public final char c(char c) {
        return Character.toUpperCase(c);
    }
}
