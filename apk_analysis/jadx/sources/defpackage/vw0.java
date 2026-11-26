package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class vw0 implements v48 {
    public final ByteBuffer b;
    public final int c;

    public vw0(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        this.b = byteBufferSlice;
        this.c = byteBufferSlice.capacity();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return wv8.d;
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) {
        ByteBuffer byteBuffer = this.b;
        int iPosition = byteBuffer.position();
        int i = this.c;
        if (iPosition == i) {
            return -1L;
        }
        int iPosition2 = (int) (((long) byteBuffer.position()) + j);
        if (iPosition2 <= i) {
            i = iPosition2;
        }
        byteBuffer.limit(i);
        return bu0Var.write(byteBuffer);
    }
}
