package yads;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

/* JADX INFO: loaded from: classes6.dex */
public final class fv4 extends HandlerThread implements Handler.Callback {
    public um2 b;
    public Handler c;
    public Error d;
    public RuntimeException e;
    public gv4 f;

    public fv4() {
        super("ExoPlayer:PlaceholderSurface");
    }

    public final gv4 a(int i) {
        boolean z;
        start();
        Handler handler = new Handler(getLooper(), this);
        this.c = handler;
        this.b = new um2(handler);
        synchronized (this) {
            z = false;
            this.c.obtainMessage(1, i, 0).sendToTarget();
            while (this.f == null && this.e == null && this.d == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        Error error = this.d;
        if (error != null) {
            throw error;
        }
        gv4 gv4Var = this.f;
        gv4Var.getClass();
        return gv4Var;
    }

    public final void b(int i) {
        this.b.getClass();
        this.b.a(i);
        SurfaceTexture surfaceTexture = this.b.g;
        surfaceTexture.getClass();
        this.f = new gv4(this, surfaceTexture, i != 0);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                try {
                    this.b.getClass();
                    this.b.a();
                } catch (Throwable th) {
                    try {
                        sv3.b("PlaceholderSurface", sv3.a("Failed to release placeholder surface", th));
                    } finally {
                        quit();
                    }
                }
                return true;
            }
            try {
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e) {
                    sv3.b("PlaceholderSurface", sv3.a("Failed to initialize placeholder surface", e));
                    this.d = e;
                    synchronized (this) {
                        notify();
                    }
                }
            } catch (RuntimeException e2) {
                sv3.b("PlaceholderSurface", sv3.a("Failed to initialize placeholder surface", e2));
                this.e = e2;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }
}
