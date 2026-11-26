package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class x49 extends ag6<w49> {
    public short[] a;
    public int b;

    @Override // defpackage.ag6
    public final w49 a() {
        return new w49(Arrays.copyOf(this.a, this.b));
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        short[] sArr = this.a;
        if (sArr.length < i) {
            int length = sArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(sArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
