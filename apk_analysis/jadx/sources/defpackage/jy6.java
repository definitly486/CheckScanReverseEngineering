package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.muxer.WebmConstants;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class jy6 implements okhttp3.a {
    public final OkHttpClient b;
    public final b37 c;
    public final py6 d;
    public final okhttp3.b e;
    public final ky6 f;
    public final AtomicBoolean g;
    public Object h;
    public p13 i;
    public ly6 j;
    public boolean k;
    public n13 l;
    public boolean m;
    public boolean n;
    public boolean o;
    public volatile boolean p;
    public volatile n13 q;
    public volatile ly6 r;

    public final class a implements Runnable {
        public final ty0 b;
        public volatile AtomicInteger c = new AtomicInteger(0);

        public a(ty0 ty0Var) {
            this.b = ty0Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            fz3.a aVar;
            boolean z;
            OkHttpClient okHttpClient;
            fz3 fz3Var = jy6.this.c.a;
            fz3Var.getClass();
            fz3.a aVar2 = null;
            try {
                aVar = new fz3.a();
                aVar.c(fz3Var, "/...");
            } catch (IllegalArgumentException unused) {
                aVar = null;
            }
            aVar.getClass();
            boolean z2 = false;
            aVar.b = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
            aVar.c = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
            String strConcat = "OkHttp ".concat(aVar.a().i);
            jy6 jy6Var = jy6.this;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(strConcat);
            try {
                try {
                    jy6Var.f.h();
                    try {
                        z = true;
                        try {
                            this.b.onResponse(jy6Var, jy6Var.e());
                            okHttpClient = jy6Var.b;
                        } catch (IOException e) {
                            e = e;
                            if (z) {
                                z86 z86Var = z86.a;
                                z86 z86Var2 = z86.a;
                                StringBuilder sb = new StringBuilder("Callback failure for ");
                                StringBuilder sb2 = new StringBuilder(jy6Var.p ? "canceled " : "");
                                sb2.append(NotificationCompat.CATEGORY_CALL);
                                sb2.append(" to ");
                                fz3 fz3Var2 = jy6Var.c.a;
                                fz3Var2.getClass();
                                try {
                                    fz3.a aVar3 = new fz3.a();
                                    aVar3.c(fz3Var2, "/...");
                                    aVar2 = aVar3;
                                } catch (IllegalArgumentException unused2) {
                                }
                                aVar2.getClass();
                                aVar2.b = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
                                aVar2.c = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
                                sb2.append(aVar2.a().i);
                                sb.append(sb2.toString());
                                String string = sb.toString();
                                z86Var2.getClass();
                                z86.i(string, 4, e);
                            } else {
                                this.b.onFailure(jy6Var, e);
                            }
                            okHttpClient = jy6Var.b;
                        } catch (Throwable th) {
                            th = th;
                            z2 = true;
                            jy6Var.cancel();
                            if (!z2) {
                                IOException iOException = new IOException("canceled due to " + th);
                                sj0.c(iOException, th);
                                this.b.onFailure(jy6Var, iOException);
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        z = false;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    okHttpClient.b.c(this);
                    threadCurrentThread.setName(name);
                } catch (Throwable th3) {
                    threadCurrentThread.setName(name);
                    throw th3;
                }
            } catch (Throwable th4) {
                jy6Var.b.b.c(this);
                throw th4;
            }
        }
    }

    public static final class b extends WeakReference<jy6> {
        public final Object a;

        public b(jy6 jy6Var, Object obj) {
            super(jy6Var);
            this.a = obj;
        }
    }

    public jy6(OkHttpClient okHttpClient, b37 b37Var) {
        okHttpClient.getClass();
        b37Var.getClass();
        this.b = okHttpClient;
        this.c = b37Var;
        this.d = (py6) okHttpClient.c.b;
        this.e = okHttpClient.f.a(this);
        ky6 ky6Var = new ky6(this);
        ky6Var.g(okHttpClient.x);
        this.f = ky6Var;
        this.g = new AtomicBoolean();
        this.o = true;
    }

    @Override // okhttp3.a
    public final void a(ty0 ty0Var) {
        a next;
        if (!this.g.compareAndSet(false, true)) {
            ah.f("Already Executed");
            return;
        }
        z86 z86Var = z86.a;
        this.h = z86.a.g();
        this.e.callStart(this);
        ko2 ko2Var = this.b.b;
        a aVar = new a(ty0Var);
        ko2Var.getClass();
        synchronized (ko2Var) {
            ko2Var.b.add(aVar);
            String str = this.c.a.d;
            Iterator<a> it = ko2Var.c.iterator();
            do {
                if (!it.hasNext()) {
                    Iterator<a> it2 = ko2Var.b.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                    } while (!aa4.e(jy6.this.c.a.d, str));
                } else {
                    next = it.next();
                }
            } while (!aa4.e(jy6.this.c.a.d, str));
            if (next != null) {
                aVar.c = next.c;
            }
            j59 j59Var = j59.a;
        }
        ko2Var.d();
    }

    public final void b(ly6 ly6Var) {
        byte[] bArr = gb9.a;
        if (this.j != null) {
            ah.f("Check failed.");
        } else {
            this.j = ly6Var;
            ly6Var.p.add(new b(this, this.h));
        }
    }

    public final <E extends IOException> E c(E e) {
        E interruptedIOException;
        Socket socketH;
        byte[] bArr = gb9.a;
        ly6 ly6Var = this.j;
        if (ly6Var != null) {
            synchronized (ly6Var) {
                socketH = h();
            }
            if (this.j == null) {
                if (socketH != null) {
                    gb9.e(socketH);
                }
                this.e.connectionReleased(this, ly6Var);
            } else if (socketH != null) {
                ah.f("Check failed.");
                return null;
            }
        }
        if (!this.k && this.f.i()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (e != null) {
                interruptedIOException.initCause(e);
            }
        } else {
            interruptedIOException = e;
        }
        okhttp3.b bVar = this.e;
        if (e == null) {
            bVar.callEnd(this);
            return interruptedIOException;
        }
        interruptedIOException.getClass();
        bVar.callFailed(this, interruptedIOException);
        return interruptedIOException;
    }

    @Override // okhttp3.a
    public final void cancel() {
        Socket socket;
        if (this.p) {
            return;
        }
        this.p = true;
        n13 n13Var = this.q;
        if (n13Var != null) {
            n13Var.d.cancel();
        }
        ly6 ly6Var = this.r;
        if (ly6Var != null && (socket = ly6Var.c) != null) {
            gb9.e(socket);
        }
        this.e.canceled(this);
    }

    public final Object clone() {
        return new jy6(this.b, this.c);
    }

    public final void d(boolean z) {
        n13 n13Var;
        synchronized (this) {
            if (!this.o) {
                throw new IllegalStateException("released");
            }
            j59 j59Var = j59.a;
        }
        if (z && (n13Var = this.q) != null) {
            n13Var.d.cancel();
            n13Var.a.f(n13Var, true, true, null);
        }
        this.l = null;
    }

    public final z47 e() {
        ArrayList arrayList = new ArrayList();
        nn1.s(this.b.d, arrayList);
        arrayList.add(new o67(this.b));
        arrayList.add(new xt0(this.b.k));
        arrayList.add(new px0(this.b.l));
        arrayList.add(jw1.a);
        nn1.s(this.b.e, arrayList);
        arrayList.add(new oy0());
        b37 b37Var = this.c;
        OkHttpClient okHttpClient = this.b;
        try {
            try {
                z47 z47VarB = new ez6(this, arrayList, 0, null, b37Var, okHttpClient.y, okHttpClient.z, okHttpClient.A).b(this.c);
                if (this.p) {
                    gb9.d(z47VarB);
                    throw new IOException("Canceled");
                }
                g(null);
                return z47VarB;
            } catch (IOException e) {
                IOException iOExceptionG = g(e);
                iOExceptionG.getClass();
                throw iOExceptionG;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                g(null);
            }
            throw th;
        }
    }

    @Override // okhttp3.a
    public final z47 execute() {
        if (!this.g.compareAndSet(false, true)) {
            ah.f("Already Executed");
            return null;
        }
        this.f.h();
        z86 z86Var = z86.a;
        this.h = z86.a.g();
        this.e.callStart(this);
        try {
            ko2 ko2Var = this.b.b;
            synchronized (ko2Var) {
                ko2Var.d.add(this);
            }
            z47 z47VarE = e();
            ko2 ko2Var2 = this.b.b;
            ko2Var2.getClass();
            ko2Var2.b(ko2Var2.d, this);
            return z47VarE;
        } catch (Throwable th) {
            ko2 ko2Var3 = this.b.b;
            ko2Var3.getClass();
            ko2Var3.b(ko2Var3.d, this);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0020 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:8:0x0011, B:17:0x0020, B:19:0x0024, B:20:0x0026, B:22:0x002a, B:27:0x0033, B:29:0x0037, B:34:0x0040, B:14:0x001a), top: B:54:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0024 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:8:0x0011, B:17:0x0020, B:19:0x0024, B:20:0x0026, B:22:0x002a, B:27:0x0033, B:29:0x0037, B:34:0x0040, B:14:0x001a), top: B:54:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0030  */
    public final <E extends IOException> E f(n13 n13Var, boolean z, boolean z2, E e) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        n13Var.getClass();
        if (n13Var.equals(this.q)) {
            synchronized (this) {
                z3 = false;
                if (z) {
                    try {
                        if (this.m) {
                            if (z) {
                                this.m = false;
                            }
                            if (z2) {
                                this.n = false;
                            }
                            z5 = this.m;
                            if (z5) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            if (!z5) {
                                z3 = true;
                            }
                            z4 = z3;
                            z3 = z6;
                        } else if (z2 || !this.n) {
                            z4 = false;
                        } else {
                            if (z) {
                                this.m = false;
                            }
                            if (z2) {
                                this.n = false;
                            }
                            z5 = this.m;
                            if (z5 || this.n) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                            if (!z5 && !this.n && !this.o) {
                                z3 = true;
                            }
                            z4 = z3;
                            z3 = z6;
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                } else {
                    if (z2) {
                    }
                    z4 = false;
                    j59 j59Var2 = j59.a;
                }
            }
            if (z3) {
                this.q = null;
                ly6 ly6Var = this.j;
                if (ly6Var != null) {
                    synchronized (ly6Var) {
                        ly6Var.m++;
                    }
                }
            }
            if (z4) {
                return (E) c(e);
            }
        }
        return e;
    }

    public final IOException g(IOException iOException) {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.o) {
                    this.o = false;
                    if (!this.m && !this.n) {
                        z = true;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z ? c(iOException) : iOException;
    }

    public final Socket h() {
        ly6 ly6Var = this.j;
        ly6Var.getClass();
        byte[] bArr = gb9.a;
        ArrayList arrayList = ly6Var.p;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (aa4.e(((Reference) it.next()).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            ah.f("Check failed.");
            return null;
        }
        arrayList.remove(i);
        this.j = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        ly6Var.q = System.nanoTime();
        py6 py6Var = this.d;
        do8 do8Var = py6Var.b;
        ConcurrentLinkedQueue<ly6> concurrentLinkedQueue = py6Var.d;
        byte[] bArr2 = gb9.a;
        if (!ly6Var.j) {
            do8Var.c(py6Var.c, 0L);
            return null;
        }
        ly6Var.j = true;
        concurrentLinkedQueue.remove(ly6Var);
        if (concurrentLinkedQueue.isEmpty()) {
            do8Var.a();
        }
        Socket socket = ly6Var.d;
        socket.getClass();
        return socket;
    }

    @Override // okhttp3.a
    public final b37 m() {
        return this.c;
    }

    @Override // okhttp3.a
    public final boolean n() {
        return this.p;
    }
}
