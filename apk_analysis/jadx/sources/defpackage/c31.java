package defpackage;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CompletionHandlerException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class c31<T> extends io2<T> implements a31<T>, b32, lf9 {
    public static final /* synthetic */ long g;
    public static final /* synthetic */ long h;
    public static final /* synthetic */ long i;
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;
    public final e02<T> e;
    public final o22 f;

    static {
        Unsafe unsafe = pz0.a;
        g = unsafe.objectFieldOffset(c31.class.getDeclaredField("_decisionAndIndex$volatile"));
        i = unsafe.objectFieldOffset(c31.class.getDeclaredField("_state$volatile"));
        h = unsafe.objectFieldOffset(c31.class.getDeclaredField("_parentHandle$volatile"));
    }

    public c31(int i2, e02 e02Var) {
        super(i2);
        this.e = e02Var;
        this.f = e02Var.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = v6.b;
    }

    public static Object E(no5 no5Var, Object obj, int i2, dm3 dm3Var) {
        if (obj instanceof yq1) {
            return obj;
        }
        if (i2 != 1 && i2 != 2) {
            return obj;
        }
        if (dm3Var != null || (no5Var instanceof q21)) {
            return new wq1(obj, no5Var instanceof q21 ? (q21) no5Var : null, dm3Var, (Throwable) null, 16);
        }
        return obj;
    }

    public static void y(no5 no5Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + no5Var + ", already has " + obj).toString());
    }

    public final void A() {
        c31<T> c31Var;
        e02<T> e02Var = this.e;
        Throwable th = null;
        fo2 fo2Var = e02Var instanceof fo2 ? (fo2) e02Var : null;
        if (fo2Var != null) {
            long j = fo2.i;
            loop0: while (true) {
                Object objectVolatile = pz0.a.getObjectVolatile(fo2Var, j);
                bh8 bh8Var = go2.c;
                if (objectVolatile == bh8Var) {
                    while (true) {
                        Unsafe unsafe = pz0.a;
                        c31<T> c31Var2 = this;
                        c31Var = c31Var2;
                        if (unsafe.compareAndSwapObject(fo2Var, fo2.i, bh8Var, c31Var2)) {
                            break loop0;
                        } else if (unsafe.getObjectVolatile(fo2Var, j) != bh8Var) {
                            break;
                        } else {
                            this = c31Var;
                        }
                    }
                    this = c31Var;
                } else {
                    c31Var = this;
                    if (!(objectVolatile instanceof Throwable)) {
                        ah.f(ad2.b(objectVolatile, "Inconsistent state "));
                        return;
                    }
                    while (true) {
                        Unsafe unsafe2 = pz0.a;
                        if (unsafe2.compareAndSwapObject(fo2Var, fo2.i, objectVolatile, (Object) null)) {
                            th = (Throwable) objectVolatile;
                            break;
                        } else if (unsafe2.getObjectVolatile(fo2Var, j) != objectVolatile) {
                            fg.c("Failed requirement.");
                            return;
                        }
                    }
                }
            }
            if (th == null) {
                return;
            }
            c31Var.o();
            c31Var.d(th);
        }
    }

    public final void B(Object obj, final ps0 ps0Var) {
        C(obj, this.d, ps0Var != null ? new dm3() { // from class: b31
            @Override // defpackage.dm3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                ps0Var.invoke((Throwable) obj2);
                return j59.a;
            }
        } : null);
    }

    public final <R> void C(R r, int i2, dm3<? super Throwable, ? super R, ? super o22, j59> dm3Var) {
        c31<T> c31Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = i;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof no5)) {
                c31<T> c31Var2 = this;
                if (objectVolatile instanceof g31) {
                    g31 g31Var = (g31) objectVolatile;
                    if (unsafe.compareAndSwapInt(g31Var, g31.c, 0, 1)) {
                        if (dm3Var != null) {
                            c31Var2.l(dm3Var, g31Var.a, r);
                            return;
                        }
                        return;
                    }
                }
                ah.f(ad2.b(r, "Already resumed, but proposed with update "));
                return;
            }
            Object objE = E((no5) objectVolatile, r, i2, dm3Var);
            while (true) {
                Unsafe unsafe2 = pz0.a;
                c31Var = this;
                if (unsafe2.compareAndSwapObject(c31Var, i, objectVolatile, objE)) {
                    if (!c31Var.x()) {
                        c31Var.o();
                    }
                    c31Var.p(i2);
                    return;
                } else if (unsafe2.getObjectVolatile(c31Var, j) != objectVolatile) {
                    break;
                } else {
                    this = c31Var;
                }
            }
            this = c31Var;
        }
    }

    public final void D(r22 r22Var, T t) {
        e02<T> e02Var = this.e;
        fo2 fo2Var = e02Var instanceof fo2 ? (fo2) e02Var : null;
        C(t, (fo2Var != null ? fo2Var.e : null) == r22Var ? 4 : this.d, null);
    }

    public final bh8 F(Object obj, dm3 dm3Var) {
        c31<T> c31Var;
        bh8 bh8Var = d31.c;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = i;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof no5)) {
                return null;
            }
            Object objE = E((no5) objectVolatile, obj, this.d, dm3Var);
            while (true) {
                Unsafe unsafe2 = pz0.a;
                c31Var = this;
                if (unsafe2.compareAndSwapObject(c31Var, i, objectVolatile, objE)) {
                    if (!c31Var.x()) {
                        c31Var.o();
                    }
                    return bh8Var;
                }
                if (unsafe2.getObjectVolatile(c31Var, j) != objectVolatile) {
                    break;
                }
                this = c31Var;
            }
            this = c31Var;
        }
    }

    @Override // defpackage.lf9
    public final void a(hl7<?> hl7Var, int i2) {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if ((intVolatile & 536870911) != 536870911) {
                ah.f("invokeOnCancellation should be called at most once");
                return;
            }
            c31<T> c31Var = this;
            if (unsafe.compareAndSwapInt(c31Var, j, intVolatile, ((intVolatile >> 29) << 29) + i2)) {
                c31Var.w(hl7Var);
                return;
            }
            this = c31Var;
        }
    }

    @Override // defpackage.io2
    public final void b(CancellationException cancellationException) {
        CancellationException cancellationException2;
        c31<T> c31Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = i;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile instanceof no5) {
                ah.f("Not completed");
                return;
            }
            if (objectVolatile instanceof yq1) {
                return;
            }
            if (objectVolatile instanceof wq1) {
                wq1 wq1Var = (wq1) objectVolatile;
                if (wq1Var.e != null) {
                    ah.f("Must be called at most once");
                    return;
                }
                wq1 wq1VarA = wq1.a(wq1Var, null, cancellationException, 15);
                while (true) {
                    Unsafe unsafe2 = pz0.a;
                    c31<T> c31Var2 = this;
                    if (unsafe2.compareAndSwapObject(c31Var2, i, objectVolatile, wq1VarA)) {
                        q21 q21Var = wq1Var.b;
                        if (q21Var != null) {
                            c31Var2.i(q21Var, cancellationException);
                        }
                        dm3<Throwable, R, o22, j59> dm3Var = wq1Var.c;
                        if (dm3Var != 0) {
                            c31Var2.l(dm3Var, cancellationException, wq1Var.a);
                            return;
                        }
                        return;
                    }
                    if (unsafe2.getObjectVolatile(c31Var2, j) != objectVolatile) {
                        cancellationException2 = cancellationException;
                        c31Var = c31Var2;
                        break;
                    }
                    this = c31Var2;
                }
            } else {
                c31<T> c31Var3 = this;
                CancellationException cancellationException3 = cancellationException;
                wq1 wq1Var2 = new wq1(objectVolatile, (q21) null, (dm3) null, cancellationException3, 14);
                cancellationException2 = cancellationException3;
                while (true) {
                    wq1 wq1Var3 = wq1Var2;
                    Unsafe unsafe3 = pz0.a;
                    c31Var = c31Var3;
                    boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(c31Var, i, objectVolatile, wq1Var3);
                    wq1Var2 = wq1Var3;
                    if (zCompareAndSwapObject) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(c31Var, j) != objectVolatile) {
                        break;
                    } else {
                        c31Var3 = c31Var;
                    }
                }
            }
            cancellationException = cancellationException2;
            this = c31Var;
        }
    }

    @Override // defpackage.io2
    public final e02<T> c() {
        return this.e;
    }

    @Override // defpackage.a31
    public final boolean d(Throwable th) {
        Throwable cancellationException;
        c31<T> c31Var;
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = i;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (!(objectVolatile instanceof no5)) {
                return false;
            }
            boolean z = (objectVolatile instanceof q21) || (objectVolatile instanceof hl7);
            if (th == null) {
                cancellationException = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                cancellationException = th;
            }
            g31 g31Var = new g31(cancellationException, z);
            while (true) {
                Unsafe unsafe2 = pz0.a;
                c31Var = this;
                if (unsafe2.compareAndSwapObject(c31Var, i, objectVolatile, g31Var)) {
                    no5 no5Var = (no5) objectVolatile;
                    if (no5Var instanceof q21) {
                        c31Var.i((q21) objectVolatile, th);
                    } else if (no5Var instanceof hl7) {
                        c31Var.m((hl7) objectVolatile, th);
                    }
                    if (!c31Var.x()) {
                        c31Var.o();
                    }
                    c31Var.p(c31Var.d);
                    return true;
                }
                if (unsafe2.getObjectVolatile(c31Var, j) != objectVolatile) {
                    break;
                }
                this = c31Var;
            }
            this = c31Var;
        }
    }

    @Override // defpackage.io2
    public final Throwable e(Object obj) {
        Throwable thE = super.e(obj);
        if (thE != null) {
            return thE;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.io2
    public final <T> T f(Object obj) {
        return obj instanceof wq1 ? (T) ((wq1) obj).a : obj;
    }

    @Override // defpackage.b32
    public final b32 getCallerFrame() {
        e02<T> e02Var = this.e;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return this.f;
    }

    @Override // defpackage.io2
    public final Object h() {
        return t();
    }

    public final void i(q21 q21Var, Throwable th) {
        try {
            q21Var.b(th);
        } catch (Throwable th2) {
            v22.a(this.f, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    @Override // defpackage.a31
    public final boolean isActive() {
        return t() instanceof no5;
    }

    @Override // defpackage.a31
    public final void j(Object obj) {
        p(this.d);
    }

    @Override // defpackage.a31
    public final bh8 k(Object obj, dm3 dm3Var) {
        return F(obj, dm3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> void l(dm3<? super Throwable, ? super R, ? super o22, j59> dm3Var, Throwable th, R r) {
        o22 o22Var = this.f;
        try {
            dm3Var.invoke(th, r, o22Var);
        } catch (Throwable th2) {
            v22.a(o22Var, new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void m(hl7<?> hl7Var, Throwable th) {
        o22 o22Var = this.f;
        int intVolatile = pz0.a.getIntVolatile(this, g) & 536870911;
        if (intVolatile == 536870911) {
            ah.f("The index for Segment.onCancellation(..) is broken");
            return;
        }
        try {
            hl7Var.h(intVolatile, o22Var);
        } catch (Throwable th2) {
            v22.a(o22Var, new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    @Override // defpackage.a31
    public final void n(nl3<? super Throwable, j59> nl3Var) {
        w(new q21.a(nl3Var));
    }

    public final void o() {
        Unsafe unsafe = pz0.a;
        long j = h;
        hp2 hp2Var = (hp2) unsafe.getObjectVolatile(this, j);
        if (hp2Var == null) {
            return;
        }
        hp2Var.dispose();
        unsafe.putObjectVolatile(this, j, go5.b);
    }

    public final void p(int i2) {
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            int i3 = intVolatile >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    ah.f("Already resumed");
                    return;
                }
                boolean z = i2 == 4;
                e02<T> e02Var = this.e;
                if (!z && (e02Var instanceof fo2)) {
                    boolean z2 = i2 == 1 || i2 == 2;
                    int i4 = this.d;
                    if (z2 == (i4 == 1 || i4 == 2)) {
                        fo2 fo2Var = (fo2) e02Var;
                        r22 r22Var = fo2Var.e;
                        o22 context = fo2Var.f.getContext();
                        if (go2.h(r22Var, context)) {
                            go2.g(r22Var, context, this);
                            return;
                        }
                        b13 b13VarA = pt8.a();
                        if (b13VarA.c >= 4294967296L) {
                            b13VarA.n0(this);
                            return;
                        }
                        b13VarA.q0(true);
                        try {
                            m96.f(this, e02Var, true);
                            do {
                            } while (b13VarA.u0());
                        } catch (Throwable th) {
                            try {
                                this.g(th);
                            } finally {
                                b13VarA.k0(true);
                            }
                        }
                        return;
                    }
                }
                m96.f(this, e02Var, z);
                return;
            }
            c31<T> c31Var = this;
            if (unsafe.compareAndSwapInt(c31Var, j, intVolatile, 1073741824 + (536870911 & intVolatile))) {
                return;
            } else {
                this = c31Var;
            }
        }
    }

    @Override // defpackage.a31
    public final <R extends T> void q(R r, dm3<? super Throwable, ? super R, ? super o22, j59> dm3Var) {
        C(r, this.d, dm3Var);
    }

    public Throwable r(sb4 sb4Var) {
        return sb4Var.y();
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        Throwable thA = k57.a(obj);
        if (thA != null) {
            obj = new yq1(thA, false);
        }
        C(obj, this.d, null);
    }

    public final Object s() throws Throwable {
        mb4 mb4Var;
        boolean zX = x();
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = g;
            int intVolatile = unsafe.getIntVolatile(this, j);
            int i2 = intVolatile >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    ah.f("Already suspended");
                    return null;
                }
                if (zX) {
                    this.A();
                }
                Object objT = this.t();
                if (objT instanceof yq1) {
                    throw ((yq1) objT).a;
                }
                int i3 = this.d;
                if ((i3 != 1 && i3 != 2) || (mb4Var = (mb4) this.f.get(mb4.a.b)) == null || mb4Var.isActive()) {
                    return this.f(objT);
                }
                CancellationException cancellationExceptionY = mb4Var.y();
                this.b(cancellationExceptionY);
                throw cancellationExceptionY;
            }
            c31<T> c31Var = this;
            if (unsafe.compareAndSwapInt(c31Var, j, intVolatile, 536870912 + (536870911 & intVolatile))) {
                if (((hp2) unsafe.getObjectVolatile(c31Var, h)) == null) {
                    c31Var.v();
                }
                if (zX) {
                    c31Var.A();
                }
                return a32.COROUTINE_SUSPENDED;
            }
            this = c31Var;
        }
    }

    public final Object t() {
        return pz0.a.getObjectVolatile(this, i);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder(z());
        sb.append('(');
        sb.append(cd2.c(this.e));
        sb.append("){");
        Object objT = t();
        if (objT instanceof no5) {
            str = "Active";
        } else {
            str = objT instanceof g31 ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(cd2.a(this));
        return sb.toString();
    }

    public final void u() {
        hp2 hp2VarV = v();
        if (hp2VarV == null || (t() instanceof no5)) {
            return;
        }
        hp2VarV.dispose();
        pz0.a.putObjectVolatile(this, h, go5.b);
    }

    public final hp2 v() {
        mb4 mb4Var = (mb4) this.f.get(mb4.a.b);
        if (mb4Var == null) {
            return null;
        }
        hp2 hp2VarG = qb4.g(mb4Var, new fi1(this));
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = h;
            c31<T> c31Var = this;
            if (unsafe.compareAndSwapObject(c31Var, j, (Object) null, hp2VarG) || unsafe.getObjectVolatile(c31Var, j) != null) {
                break;
            }
            this = c31Var;
        }
        return hp2VarG;
    }

    public final void w(no5 no5Var) {
        no5 no5Var2;
        c31<T> c31Var;
        c31<T> c31Var2;
        Unsafe unsafe;
        while (true) {
            Unsafe unsafe2 = pz0.a;
            long j = i;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile instanceof v6) {
                while (true) {
                    Unsafe unsafe3 = pz0.a;
                    c31<T> c31Var3 = this;
                    no5 no5Var3 = no5Var;
                    c31Var = c31Var3;
                    no5Var2 = no5Var3;
                    if (unsafe3.compareAndSwapObject(c31Var3, i, objectVolatile, no5Var3)) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(c31Var, j) != objectVolatile) {
                        break;
                    }
                    this = c31Var;
                    no5Var = no5Var2;
                }
            } else {
                no5Var2 = no5Var;
                c31Var = this;
                if ((objectVolatile instanceof q21) || (objectVolatile instanceof hl7)) {
                    y(no5Var2, objectVolatile);
                    throw null;
                }
                if (objectVolatile instanceof yq1) {
                    yq1 yq1Var = (yq1) objectVolatile;
                    if (!unsafe2.compareAndSwapInt(yq1Var, yq1.b, 0, 1)) {
                        y(no5Var2, objectVolatile);
                        throw null;
                    }
                    if (objectVolatile instanceof g31) {
                        Throwable th = yq1Var.a;
                        if (no5Var2 instanceof q21) {
                            c31Var.i((q21) no5Var2, th);
                            return;
                        } else {
                            c31Var.m((hl7) no5Var2, th);
                            return;
                        }
                    }
                    return;
                }
                if (objectVolatile instanceof wq1) {
                    wq1 wq1Var = (wq1) objectVolatile;
                    if (wq1Var.b != null) {
                        y(no5Var2, objectVolatile);
                        throw null;
                    }
                    if (no5Var2 instanceof hl7) {
                        return;
                    }
                    q21 q21Var = (q21) no5Var2;
                    Throwable th2 = wq1Var.e;
                    if (th2 != null) {
                        c31Var.i(q21Var, th2);
                        return;
                    }
                    wq1 wq1VarA = wq1.a(wq1Var, q21Var, null, 29);
                    do {
                        unsafe = pz0.a;
                        if (unsafe.compareAndSwapObject(c31Var, i, objectVolatile, wq1VarA)) {
                            return;
                        }
                    } while (unsafe.getObjectVolatile(c31Var, j) == objectVolatile);
                } else {
                    if (no5Var2 instanceof hl7) {
                        return;
                    }
                    wq1 wq1Var2 = new wq1(objectVolatile, (q21) no5Var2, (dm3) null, (Throwable) null, 28);
                    while (true) {
                        wq1 wq1Var3 = wq1Var2;
                        Unsafe unsafe4 = pz0.a;
                        c31Var2 = c31Var;
                        boolean zCompareAndSwapObject = unsafe4.compareAndSwapObject(c31Var2, i, objectVolatile, wq1Var3);
                        wq1Var2 = wq1Var3;
                        if (zCompareAndSwapObject) {
                            return;
                        }
                        if (unsafe4.getObjectVolatile(c31Var2, j) != objectVolatile) {
                            break;
                        } else {
                            c31Var = c31Var2;
                        }
                    }
                }
                this = c31Var2;
                no5Var = no5Var2;
            }
            c31Var2 = c31Var;
            this = c31Var2;
            no5Var = no5Var2;
        }
    }

    public final boolean x() {
        if (this.d != 2) {
            return false;
        }
        e02<T> e02Var = this.e;
        e02Var.getClass();
        return pz0.a.getObjectVolatile((fo2) e02Var, fo2.i) != null;
    }

    public String z() {
        return "CancellableContinuation";
    }
}
