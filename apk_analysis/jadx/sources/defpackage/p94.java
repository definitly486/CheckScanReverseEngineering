package defpackage;

import com.google.common.collect.j;
import io.grpc.h;
import io.grpc.l;
import java.net.SocketAddress;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class p94 implements l94<Object>, z29 {
    public final rb8 A;
    public final String B;
    public final m94 a;
    public final String b;
    public final i00 c;
    public final ez4.p.a d;
    public final fm1 e;
    public final ScheduledExecutorService f;
    public final i94 g;
    public final py0 h;
    public final ua5 i;
    public final n91 j;
    public final boolean k;
    public final List<gm1> l;
    public final ch8 m;
    public final e n;
    public volatile List<io.grpc.d> o;
    public w33 p;
    public final a98 q;
    public ch8.c r;
    public ch8.c s;
    public nz4 t;
    public c w;
    public volatile c x;
    public h88 z;
    public final ArrayList u = new ArrayList();
    public final b v = new b();
    public volatile dx1 y = dx1.a(cx1.IDLE);

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fl7.values().length];
            a = iArr;
            try {
                iArr[fl7.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[fl7.INTEGRITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[fl7.PRIVACY_AND_INTEGRITY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class b extends u1 {
        public b() {
            super(4, (byte) 0);
        }

        @Override // defpackage.u1
        public final void h() {
            p94 p94Var = p94.this;
            ez4.this.Y.o(p94Var, true);
        }

        @Override // defpackage.u1
        public final void i() {
            p94 p94Var = p94.this;
            ez4.this.Y.o(p94Var, false);
        }
    }

    public static final class c extends dj3 {
        public final mw1 a;
        public final py0 b;

        public class a extends zi3 {
            public final /* synthetic */ cm1 b;

            /* JADX INFO: renamed from: p94$c$a$a, reason: collision with other inner class name */
            public class C0314a extends aj3 {
                public final /* synthetic */ dm1 a;

                public C0314a(dm1 dm1Var) {
                    this.a = dm1Var;
                }

                @Override // defpackage.dm1
                public final void c(h88 h88Var, dm1.a aVar, la5 la5Var) {
                    py0 py0Var = c.this.b;
                    if (h88Var.f()) {
                        py0Var.c.a();
                    } else {
                        py0Var.d.a();
                    }
                    this.a.c(h88Var, aVar, la5Var);
                }
            }

            public a(cm1 cm1Var) {
                this.b = cm1Var;
            }

            @Override // defpackage.cm1
            public final void i(dm1 dm1Var) {
                py0 py0Var = c.this.b;
                py0Var.b.a();
                py0Var.a.b();
                this.b.i(new C0314a(dm1Var));
            }
        }

        public c(mw1 mw1Var, py0 py0Var) {
            this.a = mw1Var;
            this.b = py0Var;
        }

        @Override // defpackage.dj3
        public final mw1 a() {
            return this.a;
        }

        @Override // defpackage.em1
        public final cm1 b(ra5<?, ?> ra5Var, la5 la5Var, io.grpc.b bVar, io.grpc.c[] cVarArr) {
            return new a(this.a.b(ra5Var, la5Var, bVar, cVarArr));
        }
    }

    public static abstract class d {
    }

    public static final class e {
        public List<io.grpc.d> a;
        public int b;
        public int c;

        public final io.grpc.a a() {
            return this.a.get(this.b).b;
        }

        public final void b() {
            this.b = 0;
            this.c = 0;
        }
    }

    public class f implements nz4.a {
        public final c a;
        public boolean b = false;

        public class a implements Runnable {
            public final /* synthetic */ mn2 b;
            public final /* synthetic */ h88 c;

            public a(mn2 mn2Var, h88 h88Var) {
                this.b = mn2Var;
                this.c = h88Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                io.grpc.a.b<String> bVar = io.grpc.d.e;
                if (p94.this.y.a == cx1.SHUTDOWN) {
                    return;
                }
                c cVar = p94.this.x;
                f fVar = f.this;
                c cVar2 = fVar.a;
                p94 p94Var = p94.this;
                if (cVar == cVar2) {
                    p94Var.x = null;
                    p94.this.n.b();
                    p94.this.f(cx1.IDLE);
                    p94 p94Var2 = p94.this;
                    rb8 rb8Var = p94Var2.A;
                    String str = p94Var2.B;
                    String strB = f.b(p94Var2.n.a());
                    String str2 = (String) p94.this.n.a().a.get(bVar);
                    String str3 = str2 != null ? str2 : "";
                    String strA = this.b.a();
                    String strA2 = f.a((fl7) p94.this.n.a().a.get(us3.a));
                    rb8Var.a.a(rb8.b, j.s(str), j.u(strB, str3, strA));
                    rb8Var.a.b(rb8.e, -1L, j.s(str), j.u(strA2, strB, str3));
                    return;
                }
                if (p94Var.w == cVar2) {
                    rb8 rb8Var2 = p94Var.A;
                    String str4 = p94Var.B;
                    String strB2 = f.b(p94Var.n.a());
                    String str5 = (String) p94.this.n.a().a.get(bVar);
                    rb8Var2.a.a(rb8.d, j.s(str4), j.t(strB2, str5 != null ? str5 : ""));
                    o8.q("Expected state is CONNECTING, actual state is %s", p94.this.y.a == cx1.CONNECTING, p94.this.y.a);
                    e eVar = p94.this.n;
                    io.grpc.d dVar = eVar.a.get(eVar.b);
                    int i = eVar.c + 1;
                    eVar.c = i;
                    if (i >= dVar.a.size()) {
                        eVar.b++;
                        eVar.c = 0;
                    }
                    e eVar2 = p94.this.n;
                    int i2 = eVar2.b;
                    int size = eVar2.a.size();
                    p94 p94Var3 = p94.this;
                    if (i2 < size) {
                        p94Var3.i();
                        return;
                    }
                    p94Var3.w = null;
                    p94Var3.n.b();
                    p94 p94Var4 = p94.this;
                    h88 h88Var = this.c;
                    p94Var4.m.d();
                    o8.f(!h88Var.f(), "The error status must not be OK");
                    p94Var4.g(new dx1(cx1.TRANSIENT_FAILURE, h88Var));
                    if (p94Var4.k) {
                        return;
                    }
                    w33 w33VarA = p94Var4.p;
                    if (w33VarA == null) {
                        w33VarA = ((w33.a) p94Var4.c).a();
                        p94Var4.p = w33VarA;
                    }
                    long jA = w33VarA.a() - p94Var4.q.a();
                    p94Var4.j.b(n91.a.INFO, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", p94.h(h88Var), Long.valueOf(jA));
                    o8.s(p94Var4.r == null, "previous reconnectTask is not done");
                    p94Var4.r = p94Var4.m.c(new q94(p94Var4), jA, TimeUnit.NANOSECONDS, p94Var4.f);
                }
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                p94.this.u.remove(fVar.a);
                if (p94.this.y.a == cx1.SHUTDOWN && p94.this.u.isEmpty()) {
                    p94 p94Var = p94.this;
                    p94Var.m.execute(new u94(p94Var));
                }
            }
        }

        public f(c cVar) {
            this.a = cVar;
        }

        public static String a(fl7 fl7Var) {
            int i;
            if (fl7Var == null || (i = a.a[fl7Var.ordinal()]) == 1) {
                return "none";
            }
            if (i == 2) {
                return "integrity_only";
            }
            if (i == 3) {
                return "privacy_and_integrity";
            }
            r01.e(fl7Var, "Unknown SecurityLevel: ");
            return null;
        }

        public static String b(io.grpc.a aVar) {
            String str = (String) aVar.a.get(io.grpc.d.f);
            if (str == null) {
                str = (String) aVar.a.get(l.a);
            }
            return str == null ? "" : str;
        }

        public final void c(boolean z) {
            p94 p94Var = p94.this;
            p94Var.m.execute(new v94(p94Var, this.a, z));
        }

        public final void d(h88 h88Var, mn2 mn2Var) {
            p94 p94Var = p94.this;
            p94Var.j.b(n91.a.INFO, "{0} SHUTDOWN with {1}", this.a.c(), p94.h(h88Var));
            this.b = true;
            p94Var.m.execute(new a(mn2Var, h88Var));
        }

        public final void e() {
            o8.s(this.b, "transportShutdown() must be called before transportTerminated().");
            p94 p94Var = p94.this;
            n91 n91Var = p94Var.j;
            n91.a aVar = n91.a.INFO;
            c cVar = this.a;
            n91Var.b(aVar, "{0} Terminated", cVar.c());
            ch8 ch8Var = p94Var.m;
            ch8Var.execute(new v94(p94Var, cVar, false));
            for (gm1 gm1Var : p94Var.l) {
                cVar.getAttributes();
                gm1Var.getClass();
            }
            ch8Var.execute(new b());
        }
    }

    public static final class g extends n91 {
        public m94 a;

        @Override // defpackage.n91
        public final void a(n91.a aVar, String str) {
            m94 m94Var = this.a;
            Level levelD = o91.d(aVar);
            if (s91.c.isLoggable(levelD)) {
                s91.a(m94Var, levelD, str);
            }
        }

        @Override // defpackage.n91
        public final void b(n91.a aVar, String str, Object... objArr) {
            m94 m94Var = this.a;
            Level levelD = o91.d(aVar);
            if (s91.c.isLoggable(levelD)) {
                s91.a(m94Var, levelD, MessageFormat.format(str, objArr));
            }
        }
    }

    public p94(h.b bVar, String str, w33.a aVar, hy0 hy0Var, ScheduledExecutorService scheduledExecutorService, kd8 kd8Var, ch8 ch8Var, ez4.p.a aVar2, i94 i94Var, py0 py0Var, s91 s91Var, m94 m94Var, n91 n91Var, ArrayList arrayList, String str2, va5 va5Var) {
        List<io.grpc.d> list = bVar.a;
        o8.l(list, "addressGroups");
        o8.f(!list.isEmpty(), "addressGroups is empty");
        Iterator<io.grpc.d> it = list.iterator();
        while (it.hasNext()) {
            o8.l(it.next(), "addressGroups contains null entry");
        }
        List<io.grpc.d> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.o = listUnmodifiableList;
        e eVar = new e();
        eVar.a = listUnmodifiableList;
        this.n = eVar;
        this.b = str;
        this.c = aVar;
        this.e = hy0Var;
        this.f = scheduledExecutorService;
        this.q = (a98) kd8Var.get2();
        this.m = ch8Var;
        this.i = va5Var;
        this.d = aVar2;
        this.g = i94Var;
        this.h = py0Var;
        o8.l(s91Var, "channelTracer");
        o8.l(m94Var, "logId");
        this.a = m94Var;
        o8.l(n91Var, "channelLogger");
        this.j = n91Var;
        this.l = arrayList;
        this.k = ((Boolean) bVar.a(h.c)).booleanValue();
        this.B = str2;
        this.A = new rb8(va5Var);
    }

    public static String h(h88 h88Var) {
        StringBuilder sb = new StringBuilder();
        h88.a aVar = h88Var.a;
        Throwable th = h88Var.c;
        sb.append(aVar);
        String str = h88Var.b;
        if (str != null) {
            n1.d(sb, "(", str, ")");
        }
        if (th != null) {
            sb.append("[");
            sb.append(th);
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // defpackage.z29
    public final nz4 a() {
        c cVar = this.x;
        if (cVar != null) {
            return cVar;
        }
        this.m.execute(new r94(this));
        return null;
    }

    @Override // defpackage.l94
    public final m94 c() {
        return this.a;
    }

    public final void f(cx1 cx1Var) {
        this.m.d();
        g(dx1.a(cx1Var));
    }

    public final void g(dx1 dx1Var) {
        this.m.d();
        if (this.y.a != dx1Var.a) {
            o8.q("Cannot transition out of SHUTDOWN to %s", this.y.a != cx1.SHUTDOWN, dx1Var.a);
            if (this.k && dx1Var.a == cx1.TRANSIENT_FAILURE) {
                this.y = dx1.a(cx1.IDLE);
            } else {
                this.y = dx1Var;
            }
            this.d.a.a(dx1Var);
        }
    }

    public final void i() {
        SocketAddress socketAddress;
        xy3 xy3Var;
        ch8 ch8Var = this.m;
        ch8Var.d();
        o8.s(this.r == null, "Should have no reconnectTask scheduled");
        e eVar = this.n;
        if (eVar.b == 0 && eVar.c == 0) {
            a98 a98Var = this.q;
            a98Var.b = false;
            a98Var.b();
        }
        SocketAddress socketAddress2 = eVar.a.get(eVar.b).a.get(eVar.c);
        if (socketAddress2 instanceof xy3) {
            xy3Var = (xy3) socketAddress2;
            socketAddress = xy3Var.c;
        } else {
            socketAddress = socketAddress2;
            xy3Var = null;
        }
        io.grpc.a aVarA = eVar.a();
        String str = (String) aVarA.a.get(io.grpc.d.d);
        fm1.a aVar = new fm1.a();
        aVar.a = "unknown-authority";
        aVar.b = io.grpc.a.b;
        if (str == null) {
            str = this.b;
        }
        o8.l(str, "authority");
        aVar.a = str;
        aVar.b = aVarA;
        o8.l(this.i, "metricRecorder");
        aVar.c = xy3Var;
        g gVar = new g();
        gVar.a = this.a;
        c cVar = new c(this.e.d0(socketAddress, aVar, gVar), this.h);
        gVar.a = cVar.c();
        this.w = cVar;
        this.u.add(cVar);
        Runnable runnableD = cVar.d(new f(cVar));
        if (runnableD != null) {
            ch8Var.b(runnableD);
        }
        this.j.b(n91.a.INFO, "Started transport {0}", gVar.a);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.b(this.a.c, "logId");
        aVarB.d(this.o, "addressGroups");
        return aVarB.toString();
    }
}
