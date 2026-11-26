package yads;

import android.database.Cursor;
import java.io.Closeable;

/* JADX INFO: loaded from: classes6.dex */
public final class nk0 implements Closeable {
    public final Cursor b;

    public nk0(Cursor cursor) {
        this.b = cursor;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }
}
