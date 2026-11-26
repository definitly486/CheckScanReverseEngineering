package defpackage;

import io.grpc.h;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class e86 extends h {
    public final h.e f;
    public h.j g;
    public cx1 h = cx1.IDLE;

    public class a implements h.l {
        public final /* synthetic */ h.j a;

        public a(h.j jVar) {
            this.a = jVar;
        }

        @Override // io.grpc.h.l
        public final void a(dx1 dx1Var) {
            h.k dVar;
            e86 e86Var = e86.this;
            h.e eVar = e86Var.f;
            cx1 cx1Var = dx1Var.a;
            if (cx1Var == cx1.SHUTDOWN) {
                return;
            }
            cx1 cx1Var2 = cx1.TRANSIENT_FAILURE;
            if (cx1Var == cx1Var2 || cx1Var == cx1.IDLE) {
                eVar.e();
            }
            if (e86Var.h == cx1Var2) {
                if (cx1Var == cx1.CONNECTING) {
                    return;
                }
                if (cx1Var == cx1.IDLE) {
                    e86Var.c();
                    return;
                }
            }
            int i = b.a[cx1Var.ordinal()];
            if (i == 1) {
                dVar = e86Var.new d();
            } else if (i == 2) {
                dVar = new h.d(h.g.e);
            } else if (i == 3) {
                h.j jVar = this.a;
                o8.l(jVar, "subchannel");
                dVar = new h.d(new h.g(jVar, h88.e, false));
            } else {
                if (i != 4) {
                    r01.e(cx1Var, "Unsupported state:");
                    return;
                }
                dVar = new h.d(h.g.a(dx1Var.b));
            }
            e86Var.h = cx1Var;
            eVar.f(cx1Var, dVar);
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[cx1.values().length];
            a = iArr;
            try {
                iArr[cx1.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[cx1.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[cx1.READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[cx1.TRANSIENT_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static final class c {
        public final Boolean a;

        public c(Boolean bool) {
            this.a = bool;
        }
    }

    public final class d extends h.k {
        public final AtomicBoolean a = new AtomicBoolean(false);

        public d() {
        }

        @Override // io.grpc.h.k
        public final h.g a(l86 l86Var) {
            if (this.a.compareAndSet(false, true)) {
                e86 e86Var = e86.this;
                e86Var.f.d().execute(new qm(e86Var, 1));
            }
            return h.g.e;
        }
    }

    public e86(h.e eVar) {
        o8.l(eVar, "helper");
        this.f = eVar;
    }

    @Override // io.grpc.h
    public final h88 a(h.i iVar) {
        Boolean bool;
        List<io.grpc.d> listG = iVar.a;
        if (listG.isEmpty()) {
            h88 h88VarH = h88.m.h("NameResolver returned no usable address. addrs=" + listG + ", attrs=" + iVar.b);
            b(h88VarH);
            return h88VarH;
        }
        Object obj = iVar.c;
        if ((obj instanceof c) && (bool = ((c) obj).a) != null && bool.booleanValue()) {
            listG = d86.g(listG, new Random());
        }
        h.j jVar = this.g;
        if (jVar == null) {
            h.b.a aVar = new h.b.a();
            aVar.b = io.grpc.a.b;
            aVar.c = h.b.a.d;
            aVar.b(listG);
            h.b bVar = new h.b(aVar.a, aVar.b, aVar.c);
            h.e eVar = this.f;
            h.j jVarA = eVar.a(bVar);
            jVarA.h(new a(jVarA));
            this.g = jVarA;
            cx1 cx1Var = cx1.CONNECTING;
            h.d dVar = new h.d(h.g.e);
            this.h = cx1Var;
            eVar.f(cx1Var, dVar);
            jVarA.f();
        } else {
            jVar.i(listG);
        }
        return h88.e;
    }

    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        h.j jVar = this.g;
        if (jVar != null) {
            jVar.g();
            this.g = null;
        }
        cx1 cx1Var = cx1.TRANSIENT_FAILURE;
        h.d dVar = new h.d(h.g.a(h88Var));
        this.h = cx1Var;
        this.f.f(cx1Var, dVar);
    }

    @Override // io.grpc.h
    public final void c() {
        h.j jVar = this.g;
        if (jVar != null) {
            jVar.f();
        }
    }

    @Override // io.grpc.h
    public final void d() {
        h.j jVar = this.g;
        if (jVar != null) {
            jVar.g();
        }
    }
}
