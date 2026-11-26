package defpackage;

import java.io.Closeable;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public interface dy6 extends Closeable {
    void G(byte[] bArr, int i, int i2);

    void I();

    boolean markSupported();

    int q();

    int readUnsignedByte();

    void reset();

    void s0(OutputStream outputStream, int i);

    void skipBytes(int i);

    dy6 t(int i);
}
