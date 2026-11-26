package defpackage;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class gv5<T> implements fy0<T> {
    public final m37 b;
    public final Object c;
    public final Object[] d;
    public final okhttp3.a.InterfaceC0310a e;
    public final i02<b57, T> f;
    public volatile boolean g;
    public okhttp3.a h;
    public Throwable i;
    public boolean j;

    public class a implements ty0 {
        public final /* synthetic */ sy0 a;

        public a(sy0 sy0Var) {
            this.a = sy0Var;
        }

        @Override // defpackage.ty0
        public final void onFailure(okhttp3.a aVar, IOException iOException) {
            try {
                this.a.a(gv5.this, iOException);
            } catch (Throwable th) {
                kb9.m(th);
                th.printStackTrace();
            }
        }

        @Override // defpackage.ty0
        public final void onResponse(okhttp3.a aVar, z47 z47Var) {
            sy0 sy0Var = this.a;
            gv5 gv5Var = gv5.this;
            try {
                try {
                    sy0Var.b(gv5Var, gv5Var.j(z47Var));
                } catch (Throwable th) {
                    kb9.m(th);
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                kb9.m(th2);
                try {
                    sy0Var.a(gv5Var, th2);
                } catch (Throwable th3) {
                    kb9.m(th3);
                    th3.printStackTrace();
                }
            }
        }
    }

    public static final class b extends b57 {
        public final b57 c;
        public final iy6 d;
        public IOException e;

        public class a extends qj3 {
            public a(wu0 wu0Var) {
                super(wu0Var);
            }

            @Override // defpackage.qj3, defpackage.v48
            public final long t0(bu0 bu0Var, long j) throws IOException {
                try {
                    return super.t0(bu0Var, j);
                } catch (IOException e) {
                    b.this.e = e;
                    throw e;
                }
            }
        }

        public b(b57 b57Var) {
            this.c = b57Var;
            this.d = new iy6(new a(b57Var.L()));
        }

        @Override // defpackage.b57
        public final wu0 L() {
            return this.d;
        }

        @Override // defpackage.b57, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.c.close();
        }

        @Override // defpackage.b57
        public final long o() {
            return this.c.o();
        }

        @Override // defpackage.b57
        public final j95 p() {
            return this.c.p();
        }
    }

    public static final class c extends b57 {
        public final j95 c;
        public final long d;

        public c(j95 j95Var, long j) {
            this.c = j95Var;
            this.d = j;
        }

        @Override // defpackage.b57
        public final wu0 L() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }

        @Override // defpackage.b57
        public final long o() {
            return this.d;
        }

        @Override // defpackage.b57
        public final j95 p() {
            return this.c;
        }
    }

    public gv5(m37 m37Var, Object obj, Object[] objArr, okhttp3.a.InterfaceC0310a interfaceC0310a, i02<b57, T> i02Var) {
        this.b = m37Var;
        this.c = obj;
        this.d = objArr;
        this.e = interfaceC0310a;
        this.f = i02Var;
    }

    @Override // defpackage.fy0
    public final void cancel() {
        okhttp3.a aVar;
        this.g = true;
        synchronized (this) {
            aVar = this.h;
        }
        if (aVar != null) {
            aVar.cancel();
        }
    }

    @Override // defpackage.fy0
    /* JADX INFO: renamed from: clone */
    public final fy0 m9526clone() {
        return new gv5(this.b, this.c, this.d, this.e, this.f);
    }

    public final okhttp3.a e() {
        fz3.a aVar;
        fz3 fz3VarA;
        m37 m37Var = this.b;
        h36<?>[] h36VarArr = m37Var.k;
        Object[] objArr = this.d;
        int length = objArr.length;
        if (length != h36VarArr.length) {
            fg.c(l2.e(n7.c(length, "Argument count (", ") doesn't match expected count ("), ")", h36VarArr.length));
            return null;
        }
        i37 i37Var = new i37(m37Var.d, m37Var.c, m37Var.e, m37Var.f, m37Var.g, m37Var.h, m37Var.i, m37Var.j);
        if (m37Var.l) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(objArr[i]);
            h36VarArr[i].a(i37Var, objArr[i]);
        }
        fz3.a aVar2 = i37Var.d;
        if (aVar2 != null) {
            fz3VarA = aVar2.a();
        } else {
            String str = i37Var.c;
            fz3 fz3Var = i37Var.b;
            fz3Var.getClass();
            str.getClass();
            try {
                aVar = new fz3.a();
                aVar.c(fz3Var, str);
            } catch (IllegalArgumentException unused) {
                aVar = null;
            }
            fz3VarA = aVar != null ? aVar.a() : null;
            if (fz3VarA == null) {
                StringBuilder sb = new StringBuilder("Malformed URL. Base: ");
                sb.append(fz3Var);
                cg.g(sb, ", Relative: ", i37Var.c);
                return null;
            }
        }
        g37 aVar3 = i37Var.k;
        if (aVar3 == null) {
            mi3.a aVar4 = i37Var.j;
            if (aVar4 != null) {
                aVar3 = new mi3(aVar4.a, aVar4.b);
            } else {
                lg5.a aVar5 = i37Var.i;
                if (aVar5 != null) {
                    ArrayList arrayList2 = aVar5.c;
                    if (arrayList2.isEmpty()) {
                        ah.f("Multipart body must have at least one part.");
                        return null;
                    }
                    aVar3 = new lg5(aVar5.a, aVar5.b, gb9.w(arrayList2));
                } else if (i37Var.h) {
                    gb9.c(0L, 0L, 0L);
                    aVar3 = new f37(null, 0, new byte[0]);
                }
            }
        }
        j95 j95Var = i37Var.g;
        jv3.a aVar6 = i37Var.f;
        if (j95Var != null) {
            if (aVar3 != null) {
                aVar3 = new i37.a(aVar3, j95Var);
            } else {
                aVar6.a("Content-Type", j95Var.a);
            }
        }
        b37.a aVar7 = i37Var.e;
        aVar7.a = fz3VarA;
        aVar7.c = aVar6.e().d();
        aVar7.c(i37Var.a, aVar3);
        aVar7.d(ga4.class, new ga4(m37Var.a, this.c, m37Var.b, arrayList));
        return this.e.b(aVar7.a());
    }

    public final a57<T> h() {
        okhttp3.a aVarI;
        synchronized (this) {
            if (this.j) {
                throw new IllegalStateException("Already executed.");
            }
            this.j = true;
            aVarI = i();
        }
        if (this.g) {
            aVarI.cancel();
        }
        return j(FirebasePerfOkHttpClient.execute(aVarI));
    }

    public final okhttp3.a i() throws IOException {
        okhttp3.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        Throwable th = this.i;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            okhttp3.a aVarE = e();
            this.h = aVarE;
            return aVarE;
        } catch (IOException | Error | RuntimeException e) {
            kb9.m(e);
            this.i = e;
            throw e;
        }
    }

    public final a57<T> j(z47 z47Var) throws IOException {
        b57 b57Var = z47Var.h;
        z47.a aVarP = z47Var.p();
        aVarP.g = new c(b57Var.p(), b57Var.o());
        z47 z47VarA = aVarP.a();
        int i = z47VarA.e;
        if (i < 200 || i >= 300) {
            try {
                bu0 bu0Var = new bu0();
                b57Var.L().o0(bu0Var);
                return a57.b(new c57(b57Var.p(), b57Var.o(), bu0Var), z47VarA);
            } finally {
                b57Var.close();
            }
        }
        if (i == 204 || i == 205) {
            b57Var.close();
            return a57.d(null, z47VarA);
        }
        b bVar = new b(b57Var);
        try {
            return a57.d(this.f.convert(bVar), z47VarA);
        } catch (RuntimeException e) {
            IOException iOException = bVar.e;
            if (iOException == null) {
                throw e;
            }
            throw iOException;
        }
    }

    @Override // defpackage.fy0
    public final synchronized b37 m() {
        try {
        } catch (IOException e) {
            throw new RuntimeException("Unable to create request.", e);
        }
        return i().m();
    }

    @Override // defpackage.fy0
    public final boolean n() {
        boolean z = true;
        if (this.g) {
            return true;
        }
        synchronized (this) {
            try {
                okhttp3.a aVar = this.h;
                if (aVar == null || !aVar.n()) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.fy0
    public final void o(sy0<T> sy0Var) {
        okhttp3.a aVar;
        Throwable th;
        synchronized (this) {
            try {
                if (this.j) {
                    throw new IllegalStateException("Already executed.");
                }
                this.j = true;
                aVar = this.h;
                th = this.i;
                if (aVar == null && th == null) {
                    try {
                        okhttp3.a aVarE = e();
                        this.h = aVarE;
                        aVar = aVarE;
                    } catch (Throwable th2) {
                        th = th2;
                        kb9.m(th);
                        this.i = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            sy0Var.a(this, th);
            return;
        }
        if (this.g) {
            aVar.cancel();
        }
        FirebasePerfOkHttpClient.enqueue(aVar, new a(sy0Var));
    }

    /* JADX INFO: renamed from: clone, reason: collision with other method in class */
    public final Object m9527clone() {
        return new gv5(this.b, this.c, this.d, this.e, this.f);
    }
}
