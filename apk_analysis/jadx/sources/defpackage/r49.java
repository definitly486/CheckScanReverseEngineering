package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class r49 extends ag6<q49> {
    public long[] a;
    public int b;

    @Override // defpackage.ag6
    public final q49 a() {
        return new q49(Arrays.copyOf(this.a, this.b));
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        long[] jArr = this.a;
        if (jArr.length < i) {
            int length = jArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(jArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
