package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class ds0 extends ag6<boolean[]> {
    public boolean[] a;
    public int b;

    @Override // defpackage.ag6
    public final boolean[] a() {
        return Arrays.copyOf(this.a, this.b);
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        boolean[] zArr = this.a;
        if (zArr.length < i) {
            int length = zArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(zArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
