package defpackage;

import android.os.Handler;
import java.io.Closeable;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class d9a implements Closeable {
    public static final d9a f = new d9a(1000, w4a.g);
    public final Handler b;
    public final int c;
    public final WeakHashMap d = new WeakHashMap();
    public final s76 e = new s76(this, 2);

    public d9a(int i, Handler handler) {
        this.b = handler;
        this.c = i;
    }

    public static d9a a(int i) {
        return new d9a(i, w4a.g);
    }

    public final void b(Runnable runnable) {
        synchronized (this) {
            int size = this.d.size();
            if (this.d.put(runnable, Boolean.TRUE) == null && size == 0) {
                this.b.postDelayed(this.e, this.c);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.d.clear();
        this.b.removeCallbacks(this.e);
    }

    public final void e(Runnable runnable) {
        synchronized (this) {
            try {
                this.d.remove(runnable);
                if (this.d.size() == 0) {
                    this.b.removeCallbacks(this.e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
