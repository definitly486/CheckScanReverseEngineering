package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class mi0 extends ev {
    public final ca0 c = new ca0();
    public ByteBuffer d;
    public boolean e;
    public long f;
    public ByteBuffer g;
    public final int h;

    static {
        nq2.a("goog.exo.decoder");
    }

    public mi0(int i) {
        this.h = i;
    }

    public void b() {
        this.b = 0;
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.e = false;
    }

    public final void c(int i) {
        ByteBuffer byteBufferAllocateDirect;
        ByteBuffer byteBufferAllocateDirect2;
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer == null) {
            int i2 = this.h;
            if (i2 == 1) {
                byteBufferAllocateDirect2 = ByteBuffer.allocate(i);
            } else {
                if (i2 != 2) {
                    throw new li0(byteBuffer != null ? byteBuffer.capacity() : 0, i);
                }
                byteBufferAllocateDirect2 = ByteBuffer.allocateDirect(i);
            }
            this.d = byteBufferAllocateDirect2;
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i3 = i + iPosition;
        if (iCapacity >= i3) {
            this.d = byteBuffer;
            return;
        }
        int i4 = this.h;
        if (i4 == 1) {
            byteBufferAllocateDirect = ByteBuffer.allocate(i3);
        } else {
            if (i4 != 2) {
                ByteBuffer byteBuffer2 = this.d;
                throw new li0(byteBuffer2 != null ? byteBuffer2.capacity() : 0, i3);
            }
            byteBufferAllocateDirect = ByteBuffer.allocateDirect(i3);
        }
        byteBufferAllocateDirect.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferAllocateDirect.put(byteBuffer);
        }
        this.d = byteBufferAllocateDirect;
    }

    public final void c() {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
