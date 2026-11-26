package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class h49 extends ag6<g49> {
    public byte[] a;
    public int b;

    @Override // defpackage.ag6
    public final g49 a() {
        return new g49(Arrays.copyOf(this.a, this.b));
    }

    @Override // defpackage.ag6
    public final void b(int i) {
        byte[] bArr = this.a;
        if (bArr.length < i) {
            int length = bArr.length * 2;
            if (i < length) {
                i = length;
            }
            this.a = Arrays.copyOf(bArr, i);
        }
    }

    @Override // defpackage.ag6
    public final int d() {
        return this.b;
    }
}
