package yads;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class tl extends OutputStream {
    public final FileOutputStream b;
    public boolean c = false;

    public tl(File file) {
        this.b = new FileOutputStream(file);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.b.flush();
        try {
            this.b.getFD().sync();
        } catch (IOException e) {
            sv3.d("AtomicFile", sv3.a("Failed to sync file descriptor:", e));
        }
        this.b.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.b.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.b.write(i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.b.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.b.write(bArr, i, i2);
    }
}
