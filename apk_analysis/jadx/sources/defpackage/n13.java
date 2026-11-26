package defpackage;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;

/* JADX INFO: loaded from: classes5.dex */
public final class n13 {
    public final jy6 a;
    public final okhttp3.b b;
    public final p13 c;
    public final o13 d;
    public boolean e;
    public final ly6 f;

    public final class a extends pj3 {
        public final long c;
        public boolean d;
        public long e;
        public boolean f;
        public final /* synthetic */ n13 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(n13 n13Var, s18 s18Var, long j) {
            super(s18Var);
            s18Var.getClass();
            this.g = n13Var;
            this.c = j;
        }

        @Override // defpackage.pj3, defpackage.s18
        public final void H(bu0 bu0Var, long j) throws IOException {
            bu0Var.getClass();
            if (this.f) {
                ah.f("closed");
                return;
            }
            long j2 = this.c;
            if (j2 != -1 && this.e + j > j2) {
                StringBuilder sbF = xp.f(j2, "expected ", " bytes but received ");
                sbF.append(this.e + j);
                throw new ProtocolException(sbF.toString());
            }
            try {
                this.b.H(bu0Var, j);
                this.e += j;
            } catch (IOException e) {
                throw a(e);
            }
        }

        public final <E extends IOException> E a(E e) {
            if (this.d) {
                return e;
            }
            this.d = true;
            return (E) this.g.a(this.e, false, true, e);
        }

        @Override // defpackage.pj3, defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.f) {
                return;
            }
            this.f = true;
            long j = this.c;
            if (j != -1 && this.e != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                throw a(e);
            }
        }

        @Override // defpackage.pj3, defpackage.s18, java.io.Flushable
        public final void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                throw a(e);
            }
        }
    }

    public final class b extends qj3 {
        public final long c;
        public long d;
        public boolean e;
        public boolean f;
        public boolean g;
        public final /* synthetic */ n13 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(n13 n13Var, v48 v48Var, long j) {
            super(v48Var);
            v48Var.getClass();
            this.h = n13Var;
            this.c = j;
            this.e = true;
            if (j == 0) {
                a(null);
            }
        }

        public final <E extends IOException> E a(E e) {
            if (this.f) {
                return e;
            }
            this.f = true;
            n13 n13Var = this.h;
            if (e == null && this.e) {
                this.e = false;
                n13Var.b.responseBodyStart(n13Var.a);
            }
            return (E) n13Var.a(this.d, true, false, e);
        }

        @Override // defpackage.qj3, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.g) {
                return;
            }
            this.g = true;
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                throw a(e);
            }
        }

        @Override // defpackage.qj3, defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws IOException {
            bu0Var.getClass();
            if (this.g) {
                ah.f("closed");
                return 0L;
            }
            try {
                long jT0 = this.b.t0(bu0Var, j);
                if (this.e) {
                    this.e = false;
                    n13 n13Var = this.h;
                    n13Var.b.responseBodyStart(n13Var.a);
                }
                if (jT0 == -1) {
                    a(null);
                    return -1L;
                }
                long j2 = this.d + jT0;
                long j3 = this.c;
                if (j3 == -1 || j2 <= j3) {
                    this.d = j2;
                    if (j2 == j3) {
                        a(null);
                    }
                    return jT0;
                }
                throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
            } catch (IOException e) {
                throw a(e);
            }
        }
    }

    public n13(jy6 jy6Var, okhttp3.b bVar, p13 p13Var, o13 o13Var) {
        bVar.getClass();
        p13Var.getClass();
        this.a = jy6Var;
        this.b = bVar;
        this.c = p13Var;
        this.d = o13Var;
        this.f = o13Var.a();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final <E extends IOException> E a(long j, boolean z, boolean z2, E e) {
        if (e != null) {
            d(e);
        }
        okhttp3.b bVar = this.b;
        jy6 jy6Var = this.a;
        if (z2) {
            if (e != null) {
                bVar.requestFailed(jy6Var, e);
            } else {
                bVar.requestBodyEnd(jy6Var, j);
            }
        }
        if (z) {
            if (e != null) {
                bVar.responseFailed(jy6Var, e);
            } else {
                bVar.responseBodyEnd(jy6Var, j);
            }
        }
        return (E) jy6Var.f(this, z2, z, e);
    }

    public final hz6 b(z47 z47Var) throws IOException {
        o13 o13Var = this.d;
        try {
            String strN = z47.n(z47Var, "Content-Type");
            long jG = o13Var.g(z47Var);
            return new hz6(strN, jG, new iy6(new b(this, o13Var.c(z47Var), jG)));
        } catch (IOException e) {
            this.b.responseFailed(this.a, e);
            d(e);
            throw e;
        }
    }

    public final z47.a c(boolean z) throws IOException {
        try {
            z47.a aVarH = this.d.h(z);
            if (aVarH == null) {
                return aVarH;
            }
            aVarH.m = this;
            return aVarH;
        } catch (IOException e) {
            this.b.responseFailed(this.a, e);
            d(e);
            throw e;
        }
    }

    public final void d(IOException iOException) {
        this.e = true;
        this.c.b(iOException);
        ly6 ly6VarA = this.d.a();
        jy6 jy6Var = this.a;
        synchronized (ly6VarA) {
            try {
                if (!(iOException instanceof StreamResetException)) {
                    if (!(ly6VarA.g != null) || (iOException instanceof ConnectionShutdownException)) {
                        ly6VarA.j = true;
                        if (ly6VarA.m == 0) {
                            ly6.e(jy6Var.b, ly6VarA.b, iOException);
                            ly6VarA.l++;
                        }
                    }
                } else if (((StreamResetException) iOException).b == p03.REFUSED_STREAM) {
                    int i = ly6VarA.n + 1;
                    ly6VarA.n = i;
                    if (i > 1) {
                        ly6VarA.j = true;
                        ly6VarA.l++;
                    }
                } else if (((StreamResetException) iOException).b != p03.CANCEL || !jy6Var.p) {
                    ly6VarA.j = true;
                    ly6VarA.l++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
