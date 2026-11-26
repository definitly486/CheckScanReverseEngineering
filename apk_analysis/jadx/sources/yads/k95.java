package yads;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class k95 extends BufferedOutputStream {
    public boolean b;

    public k95(tl tlVar) {
        super(tlVar);
    }

    public final void a(OutputStream outputStream) {
        if (!this.b) {
            defpackage.ud.g();
            return;
        }
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.b = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        this.b = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th == null) {
            return;
        }
        int i = u56.a;
        throw th;
    }

    public k95(FileOutputStream fileOutputStream, int i) {
        super(fileOutputStream, i);
    }
}
