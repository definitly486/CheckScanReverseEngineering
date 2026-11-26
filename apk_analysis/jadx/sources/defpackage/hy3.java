package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hy3 implements Closeable {
    public static final or7 A;
    public final b b;
    public final LinkedHashMap c = new LinkedHashMap();
    public final String d;
    public int e;
    public int f;
    public boolean g;
    public final ho8 h;
    public final do8 i;
    public final do8 j;
    public final do8 k;
    public final nu6 l;
    public long m;
    public long n;
    public long o;
    public long p;
    public final or7 q;
    public or7 r;
    public long s;
    public long t;
    public long u;
    public long v;
    public final Socket w;
    public final wy3 x;
    public final c y;
    public final LinkedHashSet z;

    public static final class a {
        public final ho8 a;
        public Socket b;
        public String c;
        public iy6 d;
        public hy6 e;
        public b f;

        public a(ho8 ho8Var) {
            ho8Var.getClass();
            this.a = ho8Var;
            this.f = b.a;
        }
    }

    public static abstract class b {
        public static final a a = new a();

        public static final class a extends b {
            @Override // hy3.b
            public final void c(vy3 vy3Var) {
                vy3Var.c(p03.REFUSED_STREAM, null);
            }
        }

        public void b(hy3 hy3Var, or7 or7Var) {
            or7Var.getClass();
        }

        public abstract void c(vy3 vy3Var);
    }

    public final class c implements ll3<j59> {
        public final uy3 b;

        public static final class a extends jl8 {
            public final /* synthetic */ hy3 e;
            public final /* synthetic */ int f;
            public final /* synthetic */ int g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, hy3 hy3Var, int i, int i2) {
                super(str, true);
                this.e = hy3Var;
                this.f = i;
                this.g = i2;
            }

            @Override // defpackage.jl8
            public final long a() {
                hy3 hy3Var = this.e;
                try {
                    hy3Var.x.m0(this.f, this.g, true);
                    return -1L;
                } catch (IOException e) {
                    p03 p03Var = p03.PROTOCOL_ERROR;
                    hy3Var.a(p03Var, p03Var, e);
                    return -1L;
                }
            }
        }

        public c(uy3 uy3Var) {
            this.b = uy3Var;
        }

        public final void a(boolean z, int i, wu0 wu0Var, int i2) {
            boolean z2;
            long j;
            boolean z3;
            hy3 hy3Var = hy3.this;
            long j2 = 0;
            if (i != 0 && (i & 1) == 0) {
                bu0 bu0Var = new bu0();
                long j3 = i2;
                wu0Var.c0(j3);
                wu0Var.t0(bu0Var, j3);
                hy3Var.j.c(new ly3(hy3Var.d + '[' + i + "] onData", hy3Var, i, bu0Var, i2, z), 0L);
                return;
            }
            vy3 vy3VarB = hy3Var.b(i);
            if (vy3VarB == null) {
                hy3.this.n(i, p03.PROTOCOL_ERROR);
                long j4 = i2;
                hy3.this.g(j4);
                wu0Var.skip(j4);
                return;
            }
            byte[] bArr = gb9.a;
            vy3.b bVar = vy3VarB.i;
            long j5 = i2;
            bVar.getClass();
            long j6 = j5;
            while (true) {
                vy3 vy3Var = vy3.this;
                if (j6 <= j2) {
                    byte[] bArr2 = gb9.a;
                    vy3Var.b.g(j5);
                    break;
                }
                synchronized (vy3Var) {
                    z2 = bVar.c;
                    j = j2;
                    z3 = bVar.e.c + j6 > bVar.b;
                    j59 j59Var = j59.a;
                }
                if (z3) {
                    wu0Var.skip(j6);
                    vy3.this.e(p03.FLOW_CONTROL_ERROR);
                    break;
                }
                if (z2) {
                    wu0Var.skip(j6);
                    break;
                }
                long jT0 = wu0Var.t0(bVar.d, j6);
                if (jT0 == -1) {
                    n7.e();
                    return;
                }
                j6 -= jT0;
                vy3 vy3Var2 = vy3.this;
                synchronized (vy3Var2) {
                    try {
                        if (bVar.f) {
                            bVar.d.p();
                        } else {
                            bu0 bu0Var2 = bVar.e;
                            boolean z4 = bu0Var2.c == j;
                            bu0Var2.j0(bVar.d);
                            if (z4) {
                                vy3Var2.notifyAll();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                j2 = j;
            }
            if (z) {
                vy3VarB.i(gb9.b, true);
            }
        }

        public final void b(int i, List list, boolean z) {
            hy3 hy3Var = hy3.this;
            if (i != 0 && (i & 1) == 0) {
                hy3Var.j.c(new my3(hy3Var.d + '[' + i + "] onHeaders", hy3Var, i, list, z), 0L);
                return;
            }
            synchronized (hy3Var) {
                vy3 vy3VarB = hy3Var.b(i);
                if (vy3VarB != null) {
                    j59 j59Var = j59.a;
                    vy3VarB.i(gb9.u(list), z);
                    return;
                }
                if (hy3Var.g) {
                    return;
                }
                if (i <= hy3Var.e) {
                    return;
                }
                if (i % 2 == hy3Var.f % 2) {
                    return;
                }
                vy3 vy3Var = new vy3(i, hy3Var, false, z, gb9.u(list));
                hy3Var.e = i;
                hy3Var.c.put(Integer.valueOf(i), vy3Var);
                hy3Var.h.d().c(new jy3(hy3Var.d + '[' + i + "] onStream", hy3Var, vy3Var), 0L);
            }
        }

        public final void c(int i, int i2, boolean z) {
            hy3 hy3Var = hy3.this;
            if (!z) {
                hy3Var.i.c(new a(me0.d(new StringBuilder(), hy3.this.d, " ping"), hy3.this, i, i2), 0L);
                return;
            }
            synchronized (hy3Var) {
                try {
                    if (i == 1) {
                        hy3Var.m++;
                    } else if (i != 2) {
                        if (i == 3) {
                            hy3Var.notifyAll();
                        }
                        j59 j59Var = j59.a;
                    } else {
                        hy3Var.o++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void d(int i, List list) {
            hy3 hy3Var = hy3.this;
            synchronized (hy3Var) {
                if (hy3Var.z.contains(Integer.valueOf(i))) {
                    hy3Var.n(i, p03.PROTOCOL_ERROR);
                    return;
                }
                hy3Var.z.add(Integer.valueOf(i));
                hy3Var.j.c(new ny3(hy3Var.d + '[' + i + "] onRequest", hy3Var, i, list), 0L);
            }
        }

        public final void e(int i, p03 p03Var) {
            hy3 hy3Var = hy3.this;
            if (i == 0 || (i & 1) != 0) {
                vy3 vy3VarE = hy3Var.e(i);
                if (vy3VarE != null) {
                    synchronized (vy3VarE) {
                        if (vy3VarE.m == null) {
                            vy3VarE.m = p03Var;
                            vy3VarE.notifyAll();
                        }
                    }
                    return;
                }
                return;
            }
            hy3Var.j.c(new oy3(hy3Var.d + '[' + i + "] onReset", hy3Var, i, p03Var), 0L);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v12 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v8 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.ll3
        public final j59 invoke() throws Throwable {
            Throwable th;
            hy3 hy3Var = hy3.this;
            uy3 uy3Var = this.b;
            p03 p03Var = p03.INTERNAL_ERROR;
            IOException iOException = null;
            try {
                try {
                    try {
                        if (!uy3Var.a(true, this)) {
                            throw new IOException("Required SETTINGS preface not received");
                        }
                        do {
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } while (uy3Var.a(false, this));
                        p03 p03Var2 = p03.NO_ERROR;
                        try {
                            p03Var = p03.CANCEL;
                            hy3Var.a(p03Var2, p03Var, null);
                            this = p03Var2;
                        } catch (IOException e) {
                            iOException = e;
                            p03 p03Var3 = p03.PROTOCOL_ERROR;
                            hy3Var.a(p03Var3, p03Var3, iOException);
                            this = p03Var3;
                        }
                        gb9.d(uy3Var);
                        return j59.a;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e2) {
                    iOException = e2;
                }
            } catch (Throwable th4) {
                th = th4;
            }
            this = p03Var;
            hy3Var.a(this, p03Var, iOException);
            gb9.d(uy3Var);
            throw th;
        }
    }

    public static final class d extends jl8 {
        public final /* synthetic */ hy3 e;
        public final /* synthetic */ int f;
        public final /* synthetic */ p03 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, hy3 hy3Var, int i, p03 p03Var) {
            super(str, true);
            this.e = hy3Var;
            this.f = i;
            this.g = p03Var;
        }

        @Override // defpackage.jl8
        public final long a() {
            hy3 hy3Var = this.e;
            try {
                int i = this.f;
                p03 p03Var = this.g;
                p03Var.getClass();
                hy3Var.x.g(i, p03Var);
                return -1L;
            } catch (IOException e) {
                p03 p03Var2 = p03.PROTOCOL_ERROR;
                hy3Var.a(p03Var2, p03Var2, e);
                return -1L;
            }
        }
    }

    public static final class e extends jl8 {
        public final /* synthetic */ hy3 e;
        public final /* synthetic */ int f;
        public final /* synthetic */ long g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, hy3 hy3Var, int i, long j) {
            super(str, true);
            this.e = hy3Var;
            this.f = i;
            this.g = j;
        }

        @Override // defpackage.jl8
        public final long a() {
            hy3 hy3Var = this.e;
            try {
                hy3Var.x.T(this.f, this.g);
                return -1L;
            } catch (IOException e) {
                p03 p03Var = p03.PROTOCOL_ERROR;
                hy3Var.a(p03Var, p03Var, e);
                return -1L;
            }
        }
    }

    static {
        or7 or7Var = new or7();
        or7Var.b(7, 65535);
        or7Var.b(5, 16384);
        A = or7Var;
    }

    public hy3(a aVar) {
        this.b = aVar.f;
        String str = aVar.c;
        if (str == null) {
            aa4.j("connectionName");
            throw null;
        }
        this.d = str;
        this.f = 3;
        ho8 ho8Var = aVar.a;
        this.h = ho8Var;
        this.i = ho8Var.d();
        this.j = ho8Var.d();
        this.k = ho8Var.d();
        this.l = nu6.c;
        or7 or7Var = new or7();
        or7Var.b(7, 16777216);
        this.q = or7Var;
        or7 or7Var2 = A;
        this.r = or7Var2;
        this.v = or7Var2.a();
        Socket socket = aVar.b;
        if (socket == null) {
            aa4.j("socket");
            throw null;
        }
        this.w = socket;
        hy6 hy6Var = aVar.e;
        if (hy6Var == null) {
            aa4.j("sink");
            throw null;
        }
        this.x = new wy3(hy6Var);
        iy6 iy6Var = aVar.d;
        if (iy6Var == null) {
            aa4.j("source");
            throw null;
        }
        this.y = new c(new uy3(iy6Var));
        this.z = new LinkedHashSet();
    }

    public final void a(p03 p03Var, p03 p03Var2, IOException iOException) {
        int i;
        Object[] array;
        p03Var.getClass();
        p03Var2.getClass();
        byte[] bArr = gb9.a;
        try {
            f(p03Var);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (this.c.isEmpty()) {
                    array = null;
                } else {
                    array = this.c.values().toArray(new vy3[0]);
                    this.c.clear();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        vy3[] vy3VarArr = (vy3[]) array;
        if (vy3VarArr != null) {
            for (vy3 vy3Var : vy3VarArr) {
                try {
                    vy3Var.c(p03Var2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.x.close();
        } catch (IOException unused3) {
        }
        try {
            this.w.close();
        } catch (IOException unused4) {
        }
        this.i.f();
        this.j.f();
        this.k.f();
    }

    public final synchronized vy3 b(int i) {
        return (vy3) this.c.get(Integer.valueOf(i));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(p03.NO_ERROR, p03.CANCEL, null);
    }

    public final synchronized vy3 e(int i) {
        vy3 vy3Var;
        vy3Var = (vy3) this.c.remove(Integer.valueOf(i));
        notifyAll();
        return vy3Var;
    }

    public final void f(p03 p03Var) {
        p03Var.getClass();
        synchronized (this.x) {
            p07 p07Var = new p07();
            synchronized (this) {
                if (this.g) {
                    return;
                }
                this.g = true;
                int i = this.e;
                p07Var.b = i;
                j59 j59Var = j59.a;
                this.x.e(i, p03Var, gb9.a);
            }
        }
    }

    public final synchronized void g(long j) {
        long j2 = this.s + j;
        this.s = j2;
        long j3 = j2 - this.t;
        if (j3 >= this.q.a() / 2) {
            o(0, j3);
            this.t += j3;
        }
    }

    public final void m(int i, boolean z, bu0 bu0Var, long j) {
        long j2;
        long j3;
        int iMin;
        long j4;
        if (j == 0) {
            this.x.w(z, i, bu0Var, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j2 = this.u;
                            j3 = this.v;
                            if (j2 >= j3) {
                                if (!this.c.containsKey(Integer.valueOf(i))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                iMin = Math.min((int) Math.min(j, j3 - j2), this.x.d);
                j4 = iMin;
                this.u += j4;
                j59 j59Var = j59.a;
            }
            j -= j4;
            this.x.w(z && j == 0, i, bu0Var, iMin);
        }
    }

    public final void n(int i, p03 p03Var) {
        p03Var.getClass();
        this.i.c(new d(this.d + '[' + i + "] writeSynReset", this, i, p03Var), 0L);
    }

    public final void o(int i, long j) {
        this.i.c(new e(this.d + '[' + i + "] windowUpdate", this, i, j), 0L);
    }
}
