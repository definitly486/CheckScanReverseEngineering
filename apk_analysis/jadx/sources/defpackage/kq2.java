package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class kq2 extends ag6<double[]> {
    public double[] a;
    public int b;

    @Override // defpackage.ag6
    public final double[] a() {
        return Arrays.copyOf(this.a, this.b);
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        double[] dArr = this.a;
        if (dArr.length < i) {
            int length = dArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(dArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
