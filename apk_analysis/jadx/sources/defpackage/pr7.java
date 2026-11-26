package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pr7 {
    public int a;
    public final int[] b = new int[10];

    public final void a(int i, int i2) {
        int[] iArr = this.b;
        if (i >= iArr.length) {
            return;
        }
        this.a = (1 << i) | this.a;
        iArr[i] = i2;
    }
}
