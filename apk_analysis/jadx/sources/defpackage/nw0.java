package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class nw0 extends ag6<byte[]> {
    public byte[] a;
    public int b;

    @Override // defpackage.ag6
    public final byte[] a() {
        return Arrays.copyOf(this.a, this.b);
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
