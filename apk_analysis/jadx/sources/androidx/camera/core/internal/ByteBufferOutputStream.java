package androidx.camera.core.internal;

import defpackage.v93;
import java.io.EOFException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public final class ByteBufferOutputStream extends OutputStream {
    private final ByteBuffer mByteBuffer;

    public ByteBufferOutputStream(ByteBuffer byteBuffer) {
        this.mByteBuffer = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws EOFException {
        int i3;
        bArr.getClass();
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            v93.b();
        } else {
            if (i2 == 0) {
                return;
            }
            if (this.mByteBuffer.remaining() < i2) {
                throw new EOFException("Output ByteBuffer has insufficient bytes remaining.");
            }
            this.mByteBuffer.put(bArr, i, i2);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws EOFException {
        if (this.mByteBuffer.hasRemaining()) {
            this.mByteBuffer.put((byte) i);
            return;
        }
        throw new EOFException("Output ByteBuffer has no bytes remaining.");
    }
}
