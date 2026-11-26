package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class sn1 {
    public final int a;
    public final int b;

    public sn1(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a(int i, int i2, int i3, float f) {
        return (i & 15) == 0 ? i2 : i2 + ((int) ((i3 - i2) * f));
    }
}
