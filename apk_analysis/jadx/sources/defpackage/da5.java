package defpackage;

import java.io.Closeable;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class da5 implements Closeable, vk2 {
    public b b;
    public int c;
    public final g88 d;
    public final g39 e;
    public xd2 f;
    public byte[] g;
    public int h;
    public e i;
    public int j;
    public boolean k;
    public iu1 l;
    public iu1 m;
    public long n;
    public boolean o;
    public int p;
    public int q;
    public boolean r;
    public volatile boolean s;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.values().length];
            a = iArr;
            try {
                iArr[e.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface b {
        void a(j98.a aVar);

        void b(int i);

        void c(boolean z);
    }

    public static class c implements j98.a {
        public InputStream a;

        @Override // j98.a
        public final InputStream next() {
            InputStream inputStream = this.a;
            this.a = null;
            return inputStream;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class e {
        private static final /* synthetic */ e[] $VALUES;
        public static final e BODY;
        public static final e HEADER;

        static {
            e eVar = new e("HEADER", 0);
            HEADER = eVar;
            e eVar2 = new e("BODY", 1);
            BODY = eVar2;
            $VALUES = new e[]{eVar, eVar2};
        }

        public e() {
            throw null;
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) $VALUES.clone();
        }
    }

    public da5(t1.a aVar, int i, g88 g88Var, g39 g39Var) {
        bn1.b bVar = bn1.b.a;
        this.i = e.HEADER;
        this.j = 5;
        this.m = new iu1();
        this.o = false;
        this.p = -1;
        this.r = false;
        this.s = false;
        this.b = aVar;
        this.f = bVar;
        this.c = i;
        this.d = g88Var;
        o8.l(g39Var, "transportTracer");
        this.e = g39Var;
    }

    @Override // defpackage.vk2
    public final void a(int i) {
        this.c = i;
    }

    @Override // defpackage.vk2
    public final void b(pv5 pv5Var) throws Throwable {
        boolean z = true;
        try {
            if (!isClosed() && !this.r) {
                this.m.b(pv5Var);
                try {
                    o();
                    return;
                } catch (Throwable th) {
                    th = th;
                    z = false;
                    if (z) {
                        pv5Var.close();
                    }
                    throw th;
                }
            }
            pv5Var.close();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, defpackage.vk2
    public final void close() {
        if (isClosed()) {
            return;
        }
        iu1 iu1Var = this.l;
        boolean z = iu1Var != null && iu1Var.d > 0;
        try {
            iu1 iu1Var2 = this.m;
            if (iu1Var2 != null) {
                iu1Var2.close();
            }
            iu1 iu1Var3 = this.l;
            if (iu1Var3 != null) {
                iu1Var3.close();
            }
            this.m = null;
            this.l = null;
            this.b.c(z);
        } catch (Throwable th) {
            this.m = null;
            this.l = null;
            throw th;
        }
    }

    @Override // defpackage.vk2
    public final void e(xd2 xd2Var) {
        o8.s(true, "Already set full stream decompressor");
        this.f = xd2Var;
    }

    public final boolean isClosed() {
        return this.m == null;
    }

    @Override // defpackage.vk2
    public final void m() {
        if (isClosed()) {
            return;
        }
        this.n += 2;
        o();
    }

    @Override // defpackage.vk2
    public final void n() {
        if (isClosed()) {
            return;
        }
        if (this.m.d == 0) {
            close();
        } else {
            this.r = true;
        }
    }

    public final void o() {
        if (this.o) {
            return;
        }
        boolean z = true;
        this.o = true;
        while (!this.s && this.n > 0 && y()) {
            try {
                int i = a.a[this.i.ordinal()];
                if (i == 1) {
                    v();
                } else {
                    if (i != 2) {
                        throw new AssertionError("Invalid state: " + this.i);
                    }
                    p();
                    this.n--;
                }
            } catch (Throwable th) {
                this.o = false;
                throw th;
            }
        }
        if (this.s) {
            close();
            this.o = false;
            return;
        }
        if (this.r) {
            if (this.m.d != 0) {
                z = false;
            }
            if (z) {
                close();
            }
        }
        this.o = false;
    }

    public final void p() {
        InputStream dVar;
        g88 g88Var = this.d;
        y14[] y14VarArr = g88Var.a;
        int i = this.p;
        long j = this.q;
        long j2 = !this.k ? j : -1L;
        for (y14 y14Var : y14VarArr) {
            y14Var.A(i, j, j2);
        }
        this.q = 0;
        if (this.k) {
            xd2 xd2Var = this.f;
            if (xd2Var == bn1.b.a) {
                throw h88.l.h("Can't decode compressed gRPC message as compression not configured").a();
            }
            try {
                iu1 iu1Var = this.l;
                ey6.b bVar = ey6.a;
                ey6.a aVar = new ey6.a();
                o8.l(iu1Var, "buffer");
                aVar.b = iu1Var;
                dVar = new d(xd2Var.b(aVar), this.c, g88Var);
            } catch (IOException e2) {
                ti0.f(e2);
                return;
            }
        } else {
            long j3 = this.l.d;
            for (y14 y14Var2 : y14VarArr) {
                y14Var2.B(j3);
            }
            iu1 iu1Var2 = this.l;
            ey6.b bVar2 = ey6.a;
            ey6.a aVar2 = new ey6.a();
            o8.l(iu1Var2, "buffer");
            aVar2.b = iu1Var2;
            dVar = aVar2;
        }
        this.l.getClass();
        this.l = null;
        b bVar3 = this.b;
        c cVar = new c();
        cVar.a = dVar;
        bVar3.a(cVar);
        this.i = e.HEADER;
        this.j = 5;
    }

    public final void v() {
        int unsignedByte = this.l.readUnsignedByte();
        if ((unsignedByte & 254) != 0) {
            throw h88.l.h("gRPC frame header malformed: reserved bits not zero").a();
        }
        this.k = (unsignedByte & 1) != 0;
        iu1 iu1Var = this.l;
        iu1Var.a(4);
        int unsignedByte2 = iu1Var.readUnsignedByte() | (iu1Var.readUnsignedByte() << 24) | (iu1Var.readUnsignedByte() << 16) | (iu1Var.readUnsignedByte() << 8);
        this.j = unsignedByte2;
        if (unsignedByte2 < 0 || unsignedByte2 > this.c) {
            h88 h88Var = h88.j;
            Locale locale = Locale.US;
            throw h88Var.h("gRPC message exceeds maximum size " + this.c + ": " + unsignedByte2).a();
        }
        int i = this.p + 1;
        this.p = i;
        for (y14 y14Var : this.d.a) {
            y14Var.z(i);
        }
        g39 g39Var = this.e;
        g39Var.b.a();
        g39Var.a.b();
        this.i = e.BODY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0064, code lost:
    
        if (r7.i == da5.e.BODY) goto L21;
     */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean y() throws java.lang.Throwable {
        /*
            r7 = this;
            g88 r0 = r7.d
            r1 = 0
            int r2 = r7.j     // Catch: java.lang.Throwable -> Le
            if (r2 <= 0) goto L10
            iu1 r2 = r7.m     // Catch: java.lang.Throwable -> Le
            int r2 = r2.d     // Catch: java.lang.Throwable -> Le
            if (r2 != 0) goto L10
            goto L41
        Le:
            r2 = move-exception
            goto L68
        L10:
            iu1 r2 = r7.l     // Catch: java.lang.Throwable -> Le
            if (r2 != 0) goto L1b
            iu1 r2 = new iu1     // Catch: java.lang.Throwable -> Le
            r2.<init>()     // Catch: java.lang.Throwable -> Le
            r7.l = r2     // Catch: java.lang.Throwable -> Le
        L1b:
            r2 = r1
        L1c:
            int r3 = r7.j     // Catch: java.lang.Throwable -> L53
            iu1 r4 = r7.l     // Catch: java.lang.Throwable -> L53
            int r4 = r4.d     // Catch: java.lang.Throwable -> L53
            int r3 = r3 - r4
            if (r3 <= 0) goto L58
            iu1 r4 = r7.m     // Catch: java.lang.Throwable -> L53
            int r4 = r4.d     // Catch: java.lang.Throwable -> L53
            if (r4 != 0) goto L42
            if (r2 <= 0) goto L41
            da5$b r3 = r7.b
            r3.b(r2)
            da5$e r3 = r7.i
            da5$e r4 = da5.e.BODY
            if (r3 != r4) goto L41
        L38:
            long r3 = (long) r2
            r0.a(r3)
            int r0 = r7.q
            int r0 = r0 + r2
            r7.q = r0
        L41:
            return r1
        L42:
            int r3 = java.lang.Math.min(r3, r4)     // Catch: java.lang.Throwable -> L53
            int r2 = r2 + r3
            iu1 r4 = r7.l     // Catch: java.lang.Throwable -> L53
            iu1 r5 = r7.m     // Catch: java.lang.Throwable -> L53
            dy6 r3 = r5.t(r3)     // Catch: java.lang.Throwable -> L53
            r4.b(r3)     // Catch: java.lang.Throwable -> L53
            goto L1c
        L53:
            r1 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L68
        L58:
            r1 = 1
            if (r2 <= 0) goto L67
            da5$b r3 = r7.b
            r3.b(r2)
            da5$e r3 = r7.i
            da5$e r4 = da5.e.BODY
            if (r3 != r4) goto L67
            goto L38
        L67:
            return r1
        L68:
            if (r1 <= 0) goto L7e
            da5$b r3 = r7.b
            r3.b(r1)
            da5$e r3 = r7.i
            da5$e r4 = da5.e.BODY
            if (r3 != r4) goto L7e
            long r3 = (long) r1
            r0.a(r3)
            int r0 = r7.q
            int r0 = r0 + r1
            r7.q = r0
        L7e:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.da5.y():boolean");
    }

    public static final class d extends FilterInputStream {
        public final int b;
        public final g88 c;
        public long d;
        public long e;
        public long f;

        public d(InputStream inputStream, int i, g88 g88Var) {
            super(inputStream);
            this.f = -1L;
            this.b = i;
            this.c = g88Var;
        }

        public final void m() {
            long j = this.e;
            long j2 = this.d;
            if (j > j2) {
                long j3 = j - j2;
                for (y14 y14Var : this.c.a) {
                    y14Var.B(j3);
                }
                this.d = this.e;
            }
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.f = this.e;
        }

        public final void n() {
            long j = this.e;
            int i = this.b;
            if (j <= i) {
                return;
            }
            throw h88.j.h("Decompressed gRPC message exceeds maximum size " + i).a();
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.e++;
            }
            n();
            m();
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void reset() {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.e = this.f;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(j);
            this.e += jSkip;
            n();
            m();
            return jSkip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (i3 != -1) {
                this.e += (long) i3;
            }
            n();
            m();
            return i3;
        }
    }
}
