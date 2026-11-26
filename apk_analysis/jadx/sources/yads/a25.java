package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a25 {
    public final int a;
    public final int b;
    public final float[] c;
    public final float[] d;

    public a25(int i, float[] fArr, float[] fArr2, int i2) {
        this.a = i;
        if (((long) fArr.length) * 2 != ((long) fArr2.length) * 3) {
            defpackage.mi2.b();
            throw null;
        }
        this.c = fArr;
        this.d = fArr2;
        this.b = i2;
    }
}
