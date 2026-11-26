package defpackage;

import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes3.dex */
public final class je4 extends m93 {
    public final RandomAccessFile f;

    public je4(boolean z, RandomAccessFile randomAccessFile) {
        super(z);
        this.f = randomAccessFile;
    }

    @Override // defpackage.m93
    public final synchronized void m() {
        this.f.close();
    }

    @Override // defpackage.m93
    public final synchronized void n() {
        this.f.getFD().sync();
    }

    @Override // defpackage.m93
    public final synchronized int o(int i, int i2, long j, byte[] bArr) {
        bArr.getClass();
        this.f.seek(j);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = this.f.read(bArr, i, i2 - i3);
            if (i4 == -1) {
                if (i3 != 0) {
                    break;
                }
                return -1;
            }
            i3 += i4;
        }
        return i3;
    }

    @Override // defpackage.m93
    public final synchronized long p() {
        return this.f.length();
    }

    @Override // defpackage.m93
    public final synchronized void v(int i, int i2, long j, byte[] bArr) {
        bArr.getClass();
        this.f.seek(j);
        this.f.write(bArr, i, i2);
    }
}
