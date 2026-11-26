package androidx.media3.muxer;

import defpackage.o8;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class LinearByteBufferAllocator implements ByteBufferAllocator {
    private ByteBuffer memoryPool;

    public LinearByteBufferAllocator(int i) {
        o8.e(i >= 0);
        this.memoryPool = ByteBuffer.allocateDirect(i);
    }

    @Override // androidx.media3.muxer.ByteBufferAllocator
    public ByteBuffer allocate(int i) {
        o8.e(i >= 0);
        if (this.memoryPool.remaining() < i) {
            this.memoryPool = ByteBuffer.allocateDirect(Math.max(i, this.memoryPool.capacity() * 2));
        }
        ByteBuffer byteBufferSlice = this.memoryPool.slice();
        ByteBuffer byteBuffer = this.memoryPool;
        byteBuffer.position(byteBuffer.position() + i);
        byteBufferSlice.limit(i);
        return byteBufferSlice;
    }

    public void reset() {
        this.memoryPool.clear();
    }
}
