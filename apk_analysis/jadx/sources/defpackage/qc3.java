package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class qc3 extends ag6<float[]> {
    public float[] a;
    public int b;

    @Override // defpackage.ag6
    public final float[] a() {
        return Arrays.copyOf(this.a, this.b);
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        float[] fArr = this.a;
        if (fArr.length < i) {
            int length = fArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(fArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
