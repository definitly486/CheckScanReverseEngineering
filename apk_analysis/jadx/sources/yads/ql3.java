package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ql3 {
    public int a = 0;
    public int b = -1;
    public int c = 0;
    public int[] d = new int[16];
    public int e = 15;

    public final void a(int i) {
        int i2 = this.c;
        int[] iArr = this.d;
        if (i2 == iArr.length) {
            int length = iArr.length << 1;
            if (length < 0) {
                defpackage.ud.g();
                return;
            }
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i3 = this.a;
            int i4 = length2 - i3;
            System.arraycopy(iArr, i3, iArr2, 0, i4);
            System.arraycopy(this.d, 0, iArr2, i4, i3);
            this.a = 0;
            int i5 = this.c;
            this.b = i5 - 1;
            this.d = iArr2;
            this.e = length - 1;
            i2 = i5;
            iArr = iArr2;
        }
        int i6 = (this.b + 1) & this.e;
        this.b = i6;
        iArr[i6] = i;
        this.c = i2 + 1;
    }
}
