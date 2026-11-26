package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class r74 extends ag6<int[]> {
    public int[] a;
    public int b;

    @Override // defpackage.ag6
    public final int[] a() {
        return Arrays.copyOf(this.a, this.b);
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        int[] iArr = this.a;
        if (iArr.length < i) {
            int length = iArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(iArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
