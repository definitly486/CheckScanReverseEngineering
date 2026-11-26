package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class fw7 extends ag6<short[]> {
    public short[] a;
    public int b;

    @Override // defpackage.ag6
    public final short[] a() {
        return Arrays.copyOf(this.a, this.b);
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
