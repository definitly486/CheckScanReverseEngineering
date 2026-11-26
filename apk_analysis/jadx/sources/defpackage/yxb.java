package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class yxb extends mub {
    public final byte[] b;

    public yxb(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.b = bArr;
    }

    @Override // defpackage.mub
    public final byte[] g() {
        return this.b;
    }
}
