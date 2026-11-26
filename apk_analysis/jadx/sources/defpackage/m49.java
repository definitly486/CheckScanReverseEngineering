package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class m49 extends ag6<l49> {
    public int[] a;
    public int b;

    @Override // defpackage.ag6
    public final l49 a() {
        return new l49(Arrays.copyOf(this.a, this.b));
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
