package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class zr4 extends k15 {
    public Character a;

    @Override // defpackage.k15
    public final boolean a() {
        return this.a != null;
    }

    @Override // defpackage.k15
    public final boolean b(char c) {
        Character ch = this.a;
        if (ch != null) {
            return ch != null && ch.charValue() == c;
        }
        return true;
    }

    @Override // defpackage.k15
    public final char c(char c) {
        Character ch = this.a;
        if (ch == null) {
            return c;
        }
        ch.getClass();
        return ch.charValue();
    }
}
