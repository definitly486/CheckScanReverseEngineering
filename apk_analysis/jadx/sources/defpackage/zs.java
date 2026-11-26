package defpackage;

import java.io.IOException;
import java.net.Socket;

/* JADX INFO: loaded from: classes5.dex */
public final class zs implements s18 {
    public final oq7 d;
    public final lv5 e;
    public bt i;
    public Socket j;
    public boolean k;
    public int l;
    public int m;
    public final Object b = new Object();
    public final bu0 c = new bu0();
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;

    public class a extends e {
        public a() {
            super();
            r46.b();
        }

        @Override // zs.e
        public final void a() {
            zs zsVar;
            int i;
            bu0 bu0Var = new bu0();
            r46.c();
            try {
                a34 a34Var = r46.a;
                a34Var.getClass();
                synchronized (zs.this.b) {
                    bu0 bu0Var2 = zs.this.c;
                    bu0Var.H(bu0Var2, bu0Var2.v());
                    zsVar = zs.this;
                    zsVar.f = false;
                    i = zsVar.m;
                }
                zsVar.i.H(bu0Var, bu0Var.c);
                synchronized (zs.this.b) {
                    zs.this.m -= i;
                }
                a34Var.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public class b extends e {
        public b() {
            super();
            r46.b();
        }

        @Override // zs.e
        public final void a() {
            zs zsVar;
            bu0 bu0Var = new bu0();
            r46.c();
            try {
                a34 a34Var = r46.a;
                a34Var.getClass();
                synchronized (zs.this.b) {
                    bu0 bu0Var2 = zs.this.c;
                    bu0Var.H(bu0Var2, bu0Var2.c);
                    zsVar = zs.this;
                    zsVar.g = false;
                }
                zsVar.i.H(bu0Var, bu0Var.c);
                zs.this.i.flush();
                a34Var.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            zs zsVar = zs.this;
            lv5 lv5Var = zsVar.e;
            try {
                bt btVar = zsVar.i;
                if (btVar != null) {
                    bu0 bu0Var = zsVar.c;
                    long j = bu0Var.c;
                    if (j > 0) {
                        btVar.H(bu0Var, j);
                    }
                }
            } catch (IOException e) {
                lv5Var.m(e);
            }
            try {
                bt btVar2 = zsVar.i;
                if (btVar2 != null) {
                    btVar2.close();
                }
            } catch (IOException e2) {
                lv5Var.m(e2);
            }
            try {
                Socket socket = zsVar.j;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException e3) {
                lv5Var.m(e3);
            }
        }
    }

    public class d extends gj3 {
        public d(vk3 vk3Var) {
            super(vk3Var);
        }

        @Override // defpackage.vk3
        public final void h0(int i, q03 q03Var) {
            zs.this.l++;
            this.b.h0(i, q03Var);
        }

        @Override // defpackage.vk3
        public final void m0(int i, int i2, boolean z) {
            if (z) {
                zs.this.l++;
            }
            this.b.m0(i, i2, z);
        }

        @Override // defpackage.vk3
        public final void p0(pr7 pr7Var) {
            zs.this.l++;
            this.b.p0(pr7Var);
        }
    }

    public abstract class e implements Runnable {
        public e() {
        }

        public abstract void a();

        @Override // java.lang.Runnable
        public final void run() {
            zs zsVar = zs.this;
            try {
                if (zsVar.i == null) {
                    throw new IOException("Unable to perform write due to unavailable sink.");
                }
                a();
            } catch (Exception e) {
                zsVar.e.m(e);
            }
        }
    }

    public zs(oq7 oq7Var, lv5 lv5Var) {
        o8.l(oq7Var, "executor");
        this.d = oq7Var;
        this.e = lv5Var;
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) throws IOException {
        o8.l(bu0Var, "source");
        if (this.h) {
            ki0.d("closed");
            return;
        }
        r46.c();
        try {
            synchronized (this.b) {
                try {
                    this.c.H(bu0Var, j);
                    int i = this.m + this.l;
                    this.m = i;
                    boolean z = false;
                    this.l = 0;
                    if (this.k || i <= 10000) {
                        if (!this.f && !this.g && this.c.v() > 0) {
                            this.f = true;
                        }
                        r46.a.getClass();
                        return;
                    }
                    this.k = true;
                    z = true;
                    if (!z) {
                        this.d.execute(new a());
                        r46.a.getClass();
                    } else {
                        try {
                            this.j.close();
                        } catch (IOException e2) {
                            this.e.m(e2);
                        }
                        r46.a.getClass();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                r46.a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void a(bt btVar, Socket socket) {
        o8.s(this.i == null, "AsyncSink's becomeConnected should only be called once.");
        this.i = btVar;
        o8.l(socket, "socket");
        this.j = socket;
    }

    @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.h) {
            return;
        }
        this.h = true;
        this.d.execute(new c());
    }

    @Override // defpackage.s18, java.io.Flushable
    public final void flush() throws IOException {
        if (this.h) {
            ki0.d("closed");
            return;
        }
        r46.c();
        try {
            synchronized (this.b) {
                if (this.g) {
                    r46.a.getClass();
                    return;
                }
                this.g = true;
                this.d.execute(new b());
                r46.a.getClass();
            }
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.s18
    public final wv8 r() {
        return wv8.d;
    }
}
