package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
@ul2
public class sb4 implements mb4, m36 {
    public static final /* synthetic */ long b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ int d = 0;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public static final class a<T> extends c31<T> {
        public final sb4 j;

        public a(e02<? super T> e02Var, sb4 sb4Var) {
            super(1, e02Var);
            this.j = sb4Var;
        }

        @Override // defpackage.c31
        public final Throwable r(sb4 sb4Var) {
            Throwable thC;
            Object objL = this.j.L();
            if (!(objL instanceof c) || (thC = ((c) objL).c()) == null) {
                return objL instanceof yq1 ? ((yq1) objL).a : sb4Var.y();
            }
            return thC;
        }

        @Override // defpackage.c31
        public final String z() {
            return "AwaitContinuation";
        }
    }

    public static final class b extends rb4 {
        public final sb4 f;
        public final c g;
        public final hi1 h;
        public final Object i;

        public b(sb4 sb4Var, c cVar, hi1 hi1Var, Object obj) {
            this.f = sb4Var;
            this.g = cVar;
            this.h = hi1Var;
            this.i = obj;
        }

        @Override // defpackage.rb4
        public final boolean k() {
            return false;
        }

        @Override // defpackage.rb4
        public final void l(Throwable th) {
            int i = sb4.d;
            sb4 sb4Var = this.f;
            sb4Var.getClass();
            hi1 hi1Var = this.h;
            hi1 hi1VarY = sb4.Y(hi1Var);
            c cVar = this.g;
            Object obj = this.i;
            if (hi1VarY == null || !sb4Var.j0(cVar, hi1VarY, obj)) {
                cVar.b.c(new br4(2), 2);
                hi1 hi1VarY2 = sb4.Y(hi1Var);
                if (hi1VarY2 == null || !sb4Var.j0(cVar, hi1VarY2, obj)) {
                    sb4Var.s(sb4Var.F(cVar, obj));
                }
            }
        }
    }

    public static final class c implements a44 {
        public static final /* synthetic */ long c;
        public static final /* synthetic */ long d;
        public static final /* synthetic */ long e;
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile = 0;
        private volatile /* synthetic */ Object _rootCause$volatile;
        public final bo5 b;

        static {
            Unsafe unsafe = pz0.a;
            d = unsafe.objectFieldOffset(c.class.getDeclaredField("_isCompleting$volatile"));
            e = unsafe.objectFieldOffset(c.class.getDeclaredField("_rootCause$volatile"));
            c = unsafe.objectFieldOffset(c.class.getDeclaredField("_exceptionsHolder$volatile"));
        }

        public c(bo5 bo5Var, Throwable th) {
            this.b = bo5Var;
            this._rootCause$volatile = th;
        }

        public final void a(Throwable th) {
            Throwable thC = c();
            if (thC == null) {
                pz0.a.putObjectVolatile(this, e, th);
                return;
            }
            if (th == thC) {
                return;
            }
            Unsafe unsafe = pz0.a;
            long j = c;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(this, j, th);
                return;
            }
            if (!(objectVolatile instanceof Throwable)) {
                if (objectVolatile instanceof ArrayList) {
                    ((ArrayList) objectVolatile).add(th);
                    return;
                } else {
                    ah.f(ad2.b(objectVolatile, "State is "));
                    return;
                }
            }
            if (th == objectVolatile) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(objectVolatile);
            arrayList.add(th);
            unsafe.putObjectVolatile(this, j, arrayList);
        }

        @Override // defpackage.a44
        public final bo5 b() {
            return this.b;
        }

        public final Throwable c() {
            return (Throwable) pz0.a.getObjectVolatile(this, e);
        }

        public final boolean d() {
            return c() != null;
        }

        public final boolean e() {
            return pz0.a.getIntVolatile(this, d) == 1;
        }

        public final ArrayList f(Throwable th) {
            ArrayList arrayList;
            Unsafe unsafe = pz0.a;
            long j = c;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                arrayList = new ArrayList(4);
            } else if (objectVolatile instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(objectVolatile);
                arrayList = arrayList2;
            } else {
                if (!(objectVolatile instanceof ArrayList)) {
                    ah.f(ad2.b(objectVolatile, "State is "));
                    return null;
                }
                arrayList = (ArrayList) objectVolatile;
            }
            Throwable thC = c();
            if (thC != null) {
                arrayList.add(0, thC);
            }
            if (th != null && !th.equals(thC)) {
                arrayList.add(th);
            }
            unsafe.putObjectVolatile(this, j, vp2.g);
            return arrayList;
        }

        @Override // defpackage.a44
        public final boolean isActive() {
            return c() == null;
        }

        public final String toString() {
            return "Finishing[cancelling=" + d() + ", completing=" + e() + ", rootCause=" + c() + ", exceptions=" + pz0.a.getObjectVolatile(this, c) + ", list=" + this.b + ']';
        }
    }

    public final class d extends rb4 {
        public final bm7<?> f;

        public d(bm7<?> bm7Var) {
            this.f = bm7Var;
        }

        @Override // defpackage.rb4
        public final boolean k() {
            return false;
        }

        @Override // defpackage.rb4
        public final void l(Throwable th) {
            sb4 sb4Var = sb4.this;
            Object objL = sb4Var.L();
            if (!(objL instanceof yq1)) {
                objL = vp2.f(objL);
            }
            this.f.e(sb4Var, objL);
        }
    }

    public final class e extends rb4 {
        public final bm7<?> f;

        public e(bm7<?> bm7Var) {
            this.f = bm7Var;
        }

        @Override // defpackage.rb4
        public final boolean k() {
            return false;
        }

        @Override // defpackage.rb4
        public final void l(Throwable th) {
            this.f.e(sb4.this, j59.a);
        }
    }

    @bd2(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {1003, 1005}, m = "invokeSuspend", v = 1)
    public static final class f extends f57 implements bm3<bp7<? super mb4>, e02<? super j59>, Object> {
        public ou4 l;
        public hi1 m;
        public int n;
        public int o;
        public int p;
        public /* synthetic */ Object q;
        public final /* synthetic */ sb4 r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(e02 e02Var, sb4 sb4Var) {
            super(2, e02Var);
            this.r = sb4Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            f fVar = new f(e02Var, this.r);
            fVar.q = obj;
            return fVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super mb4> bp7Var, e02<? super j59> e02Var) {
            return ((f) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0062  */
        /* JADX WARN: Code duplicated, block: B:24:0x0066  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0064 -> B:27:0x007e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007b -> B:27:0x007e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = r8.q
                bp7 r0 = (defpackage.bp7) r0
                a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                int r2 = r8.p
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L27
                if (r2 == r4) goto L23
                if (r2 != r3) goto L1d
                int r2 = r8.o
                int r4 = r8.n
                hi1 r5 = r8.m
                ou4 r6 = r8.l
                defpackage.r57.b(r9)
                goto L7e
            L1d:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r5
            L23:
                defpackage.r57.b(r9)
                goto L83
            L27:
                defpackage.r57.b(r9)
                sb4 r9 = r8.r
                java.lang.Object r9 = r9.L()
                boolean r2 = r9 instanceof defpackage.hi1
                if (r2 == 0) goto L43
                hi1 r9 = (defpackage.hi1) r9
                sb4 r9 = r9.f
                r8.q = r5
                r8.p = r4
                a32 r8 = r0.a(r8, r9)
                if (r8 != r1) goto L83
                goto L7d
            L43:
                boolean r2 = r9 instanceof defpackage.a44
                if (r2 == 0) goto L83
                a44 r9 = (defpackage.a44) r9
                bo5 r9 = r9.b()
                if (r9 == 0) goto L83
                java.lang.Object r2 = r9.f()
                r2.getClass()
                pu4 r2 = (defpackage.pu4) r2
                r4 = 0
                r6 = r9
                r5 = r2
                r2 = r4
            L5c:
                boolean r9 = r5.equals(r6)
                if (r9 != 0) goto L83
                boolean r9 = r5 instanceof defpackage.hi1
                if (r9 == 0) goto L7e
                r9 = r5
                hi1 r9 = (defpackage.hi1) r9
                sb4 r7 = r9.f
                r8.q = r0
                r8.l = r6
                r8.m = r9
                r8.n = r4
                r8.o = r2
                r8.p = r3
                a32 r9 = r0.a(r8, r7)
                if (r9 != r1) goto L7e
            L7d:
                return r1
            L7e:
                pu4 r5 = r5.g()
                goto L5c
            L83:
                j59 r8 = defpackage.j59.a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: sb4.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final /* synthetic */ class g extends qm3 implements dm3<sb4, bm7<?>, Object, j59> {
        public static final g c = new g(3, sb4.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

        @Override // defpackage.dm3
        public final j59 invoke(sb4 sb4Var, bm7<?> bm7Var, Object obj) {
            Object objL;
            sb4 sb4Var2 = sb4Var;
            bm7<?> bm7Var2 = bm7Var;
            int i = sb4.d;
            do {
                objL = sb4Var2.L();
                if (!(objL instanceof a44)) {
                    bm7Var2.d(j59.a);
                }
                return j59.a;
            } while (sb4Var2.g0(objL) < 0);
            bm7Var2.c(qb4.g(sb4Var2, sb4Var2.new e(bm7Var2)));
            return j59.a;
        }
    }

    static {
        Unsafe unsafe = pz0.a;
        c = unsafe.objectFieldOffset(sb4.class.getDeclaredField("_state$volatile"));
        b = unsafe.objectFieldOffset(sb4.class.getDeclaredField("_parentHandle$volatile"));
    }

    public sb4(boolean z) {
        this._state$volatile = z ? vp2.i : vp2.h;
    }

    public static hi1 Y(pu4 pu4Var) {
        while (pu4Var.i()) {
            pu4Var = pu4Var.h();
        }
        while (true) {
            pu4Var = pu4Var.g();
            if (!pu4Var.i()) {
                if (pu4Var instanceof hi1) {
                    return (hi1) pu4Var;
                }
                if (pu4Var instanceof bo5) {
                    return null;
                }
            }
        }
    }

    public static String h0(Object obj) {
        if (!(obj instanceof c)) {
            if (obj instanceof a44) {
                return ((a44) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof yq1 ? "Cancelled" : "Completed";
        }
        c cVar = (c) obj;
        if (cVar.d()) {
            return "Cancelling";
        }
        return cVar.e() ? "Completing" : "Active";
    }

    public String A() {
        return "Job was cancelled";
    }

    public boolean B(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return w(th) && I();
    }

    public final void C(a44 a44Var, Object obj) {
        Unsafe unsafe = pz0.a;
        long j = b;
        gi1 gi1Var = (gi1) unsafe.getObjectVolatile(this, j);
        if (gi1Var != null) {
            gi1Var.dispose();
            unsafe.putObjectVolatile(this, j, go5.b);
        }
        CompletionHandlerException completionHandlerException = null;
        yq1 yq1Var = obj instanceof yq1 ? (yq1) obj : null;
        Throwable th = yq1Var != null ? yq1Var.a : null;
        if (a44Var instanceof rb4) {
            try {
                ((rb4) a44Var).l(th);
                return;
            } catch (Throwable th2) {
                N(new CompletionHandlerException("Exception in completion handler " + a44Var + " for " + this, th2));
                return;
            }
        }
        bo5 bo5VarB = a44Var.b();
        if (bo5VarB != null) {
            bo5VarB.c(new br4(1), 1);
            Object objF = bo5VarB.f();
            objF.getClass();
            for (pu4 pu4VarG = (pu4) objF; !pu4VarG.equals(bo5VarB); pu4VarG = pu4VarG.g()) {
                if (pu4VarG instanceof rb4) {
                    try {
                        ((rb4) pu4VarG).l(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != null) {
                            sj0.c(completionHandlerException, th3);
                        } else {
                            completionHandlerException = new CompletionHandlerException("Exception in completion handler " + pu4VarG + " for " + this, th3);
                            j59 j59Var = j59.a;
                        }
                    }
                }
            }
            if (completionHandlerException != null) {
                N(completionHandlerException);
            }
        }
    }

    public final Throwable D(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(A(), null, this) : th;
        }
        obj.getClass();
        return ((m36) obj).E();
    }

    @Override // defpackage.m36
    public final CancellationException E() {
        Throwable thC;
        Object objL = L();
        if (objL instanceof c) {
            thC = ((c) objL).c();
        } else if (objL instanceof yq1) {
            thC = ((yq1) objL).a;
        } else {
            if (objL instanceof a44) {
                ah.f(ad2.b(objL, "Cannot be cancelling child in this state: "));
                return null;
            }
            thC = null;
        }
        CancellationException cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
        return cancellationException == null ? new JobCancellationException("Parent job is ".concat(h0(objL)), thC, this) : cancellationException;
    }

    public final Object F(c cVar, Object obj) throws Throwable {
        Throwable th;
        sb4 sb4Var;
        c cVar2;
        yq1 yq1Var = obj instanceof yq1 ? (yq1) obj : null;
        Throwable th2 = yq1Var != null ? yq1Var.a : null;
        synchronized (cVar) {
            try {
                cVar.d();
                ArrayList<Throwable> arrayListF = cVar.f(th2);
                Throwable thH = H(cVar, arrayListF);
                if (thH != null) {
                    try {
                        if (arrayListF.size() > 1) {
                            Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListF.size()));
                            for (Throwable th3 : arrayListF) {
                                if (th3 != thH && th3 != thH && !(th3 instanceof CancellationException) && setNewSetFromMap.add(th3)) {
                                    sj0.c(thH, th3);
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        throw th;
                    }
                }
                if (thH != null && thH != th2) {
                    obj = new yq1(thH, false);
                }
                if (thH != null && (z(thH) || M(thH))) {
                    obj.getClass();
                    pz0.a.compareAndSwapInt((yq1) obj, yq1.b, 0, 1);
                }
                b0(obj);
                Object e44Var = obj instanceof a44 ? new e44((a44) obj) : obj;
                while (true) {
                    Unsafe unsafe = pz0.a;
                    long j = c;
                    sb4Var = this;
                    cVar2 = cVar;
                    if (unsafe.compareAndSwapObject(sb4Var, j, cVar2, e44Var) || unsafe.getObjectVolatile(sb4Var, j) != cVar2) {
                        break;
                    }
                    this = sb4Var;
                    cVar = cVar2;
                }
                sb4Var.C(cVar2, obj);
                return obj;
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    public final Object G() throws Throwable {
        Object objL = L();
        if (objL instanceof a44) {
            ah.f("This job has not completed yet");
            return null;
        }
        if (objL instanceof yq1) {
            throw ((yq1) objL).a;
        }
        return vp2.f(objL);
    }

    public final Throwable H(c cVar, ArrayList arrayList) {
        Object next;
        Object obj = null;
        if (arrayList.isEmpty()) {
            if (cVar.d()) {
                return new JobCancellationException(A(), null, this);
            }
            return null;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Throwable) next) instanceof CancellationException);
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : arrayList) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public boolean I() {
        return true;
    }

    public boolean J() {
        return this instanceof yp1;
    }

    public final bo5 K(a44 a44Var) {
        bo5 bo5VarB = a44Var.b();
        if (bo5VarB != null) {
            return bo5VarB;
        }
        if (a44Var instanceof ex2) {
            return new bo5();
        }
        if (a44Var instanceof rb4) {
            f0((rb4) a44Var);
            return null;
        }
        og.e(a44Var, "State should have list: ");
        return null;
    }

    public final Object L() {
        return pz0.a.getObjectVolatile(this, c);
    }

    public boolean M(Throwable th) {
        return false;
    }

    public void N(CompletionHandlerException completionHandlerException) {
        throw completionHandlerException;
    }

    public final void O(mb4 mb4Var) {
        long j = b;
        go5 go5Var = go5.b;
        if (mb4Var == null) {
            pz0.a.putObjectVolatile(this, j, go5Var);
            return;
        }
        mb4Var.start();
        gi1 gi1VarV = mb4Var.V(this);
        Unsafe unsafe = pz0.a;
        unsafe.putObjectVolatile(this, j, gi1VarV);
        if (P()) {
            gi1VarV.dispose();
            unsafe.putObjectVolatile(this, j, go5Var);
        }
    }

    @Override // defpackage.mb4
    public final boolean P() {
        return !(L() instanceof a44);
    }

    public final hp2 R(boolean z, rb4 rb4Var) {
        sb4 sb4Var;
        rb4 rb4Var2;
        boolean zC;
        rb4Var.e = this;
        loop0: while (true) {
            Object objL = this.L();
            if (!(objL instanceof ex2)) {
                sb4Var = this;
                rb4Var2 = rb4Var;
                boolean z2 = objL instanceof a44;
                go5 go5Var = go5.b;
                if (z2) {
                    a44 a44Var = (a44) objL;
                    bo5 bo5VarB = a44Var.b();
                    if (bo5VarB == null) {
                        sb4Var.f0((rb4) objL);
                    } else {
                        if (rb4Var2.k()) {
                            c cVar = a44Var instanceof c ? (c) a44Var : null;
                            Throwable thC = cVar != null ? cVar.c() : null;
                            if (thC == null) {
                                zC = bo5VarB.c(rb4Var2, 5);
                            } else if (z) {
                                rb4Var2.l(thC);
                                return go5Var;
                            }
                        } else {
                            zC = bo5VarB.c(rb4Var2, 1);
                        }
                        if (zC) {
                            break;
                        }
                    }
                    this = sb4Var;
                    rb4Var = rb4Var2;
                } else if (z) {
                    Object objL2 = sb4Var.L();
                    yq1 yq1Var = objL2 instanceof yq1 ? (yq1) objL2 : null;
                    rb4Var2.l(yq1Var != null ? yq1Var.a : null);
                }
                return go5Var;
            }
            ex2 ex2Var = (ex2) objL;
            if (ex2Var.b) {
                while (true) {
                    Unsafe unsafe = pz0.a;
                    long j = c;
                    sb4Var = this;
                    rb4Var2 = rb4Var;
                    if (unsafe.compareAndSwapObject(sb4Var, j, objL, rb4Var2)) {
                        break loop0;
                    }
                    if (unsafe.getObjectVolatile(sb4Var, j) != objL) {
                        break;
                    }
                    this = sb4Var;
                    rb4Var = rb4Var2;
                }
            } else {
                sb4Var = this;
                rb4Var2 = rb4Var;
                sb4Var.d0(ex2Var);
            }
            this = sb4Var;
            rb4Var = rb4Var2;
        }
        return rb4Var2;
    }

    public boolean S() {
        return this instanceof ek0;
    }

    public final boolean T(Object obj) {
        Object objI0;
        do {
            objI0 = i0(L(), obj);
            if (objI0 == vp2.c) {
                return false;
            }
            if (objI0 == vp2.d) {
                return true;
            }
        } while (objI0 == vp2.e);
        s(objI0);
        return true;
    }

    @Override // defpackage.mb4
    public final gi1 V(sb4 sb4Var) {
        sb4 sb4Var2;
        hi1 hi1Var = new hi1(sb4Var);
        hi1Var.e = this;
        loop0: while (true) {
            Object objL = this.L();
            if (objL instanceof ex2) {
                ex2 ex2Var = (ex2) objL;
                if (ex2Var.b) {
                    while (true) {
                        Unsafe unsafe = pz0.a;
                        long j = c;
                        sb4Var2 = this;
                        if (unsafe.compareAndSwapObject(sb4Var2, j, objL, hi1Var)) {
                            break loop0;
                        }
                        if (unsafe.getObjectVolatile(sb4Var2, j) != objL) {
                            break;
                        }
                        this = sb4Var2;
                    }
                } else {
                    sb4Var2 = this;
                    sb4Var2.d0(ex2Var);
                }
                this = sb4Var2;
            } else {
                sb4Var2 = this;
                boolean z = objL instanceof a44;
                go5 go5Var = go5.b;
                Throwable thC = null;
                if (!z) {
                    Object objL2 = sb4Var2.L();
                    yq1 yq1Var = objL2 instanceof yq1 ? (yq1) objL2 : null;
                    hi1Var.l(yq1Var != null ? yq1Var.a : null);
                    return go5Var;
                }
                bo5 bo5VarB = ((a44) objL).b();
                if (bo5VarB != null) {
                    if (bo5VarB.c(hi1Var, 7)) {
                        break;
                    }
                    boolean zC = bo5VarB.c(hi1Var, 3);
                    Object objL3 = sb4Var2.L();
                    if (objL3 instanceof c) {
                        thC = ((c) objL3).c();
                    } else {
                        yq1 yq1Var2 = objL3 instanceof yq1 ? (yq1) objL3 : null;
                        if (yq1Var2 != null) {
                            thC = yq1Var2.a;
                        }
                    }
                    hi1Var.l(thC);
                    if (zC) {
                        break;
                    }
                    return go5Var;
                }
                sb4Var2.f0((rb4) objL);
                this = sb4Var2;
            }
        }
        return hi1Var;
    }

    public final Object W(Object obj) {
        Object objI0;
        do {
            objI0 = i0(L(), obj);
            if (objI0 == vp2.c) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                yq1 yq1Var = obj instanceof yq1 ? (yq1) obj : null;
                throw new IllegalStateException(str, yq1Var != null ? yq1Var.a : null);
            }
        } while (objI0 == vp2.e);
        return objI0;
    }

    public String X() {
        return getClass().getSimpleName();
    }

    @Override // defpackage.mb4
    public final hp2 a(boolean z, boolean z2, pb4 pb4Var) {
        return R(z2, z ? new ha4(pb4Var) : new ia4(pb4Var));
    }

    public final void a0(bo5 bo5Var, Throwable th) {
        bo5Var.c(new br4(4), 4);
        Object objF = bo5Var.f();
        objF.getClass();
        CompletionHandlerException completionHandlerException = null;
        for (pu4 pu4VarG = (pu4) objF; !pu4VarG.equals(bo5Var); pu4VarG = pu4VarG.g()) {
            if ((pu4VarG instanceof rb4) && ((rb4) pu4VarG).k()) {
                try {
                    ((rb4) pu4VarG).l(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        sj0.c(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + pu4VarG + " for " + this, th2);
                        j59 j59Var = j59.a;
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            N(completionHandlerException);
        }
        z(th);
    }

    public void b0(Object obj) {
    }

    public void c0() {
    }

    @Override // defpackage.mb4, defpackage.qz6
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(A(), null, this);
        }
        x(cancellationException);
    }

    public final void d0(ex2 ex2Var) {
        bo5 bo5Var = new bo5();
        Object z34Var = ex2Var.b ? bo5Var : new z34(bo5Var);
        while (true) {
            Unsafe unsafe = pz0.a;
            long j = c;
            sb4 sb4Var = this;
            ex2 ex2Var2 = ex2Var;
            if (unsafe.compareAndSwapObject(sb4Var, j, ex2Var2, z34Var) || unsafe.getObjectVolatile(sb4Var, j) != ex2Var2) {
                return;
            }
            this = sb4Var;
            ex2Var = ex2Var2;
        }
    }

    @Override // defpackage.mb4
    public final Object e0(e02<? super j59> e02Var) throws Throwable {
        Object objL;
        do {
            objL = L();
            if (!(objL instanceof a44)) {
                qb4.e(e02Var.getContext());
                return j59.a;
            }
        } while (g0(objL) < 0);
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        c31Var.w(new kp2(qb4.g(this, new a67(c31Var))));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (objS != a32Var) {
            objS = j59.a;
        }
        return objS == a32Var ? objS : j59.a;
    }

    public boolean f(Object obj) {
        return T(obj);
    }

    public final void f0(rb4 rb4Var) {
        rb4 rb4Var2;
        sb4 sb4Var;
        bo5 bo5Var = new bo5();
        Unsafe unsafe = pz0.a;
        unsafe.putObjectVolatile(bo5Var, pu4.c, rb4Var);
        long j = pu4.b;
        unsafe.putObjectVolatile(bo5Var, j, rb4Var);
        loop0: while (true) {
            if (rb4Var.f() != rb4Var) {
                rb4Var2 = rb4Var;
                break;
            }
            while (true) {
                Unsafe unsafe2 = pz0.a;
                rb4Var2 = rb4Var;
                if (unsafe2.compareAndSwapObject(rb4Var2, pu4.b, rb4Var, bo5Var)) {
                    bo5Var.e(rb4Var2);
                    break loop0;
                }
                sb4Var = this;
                rb4Var = rb4Var2;
                if (unsafe2.getObjectVolatile(rb4Var2, j) != rb4Var2) {
                    break;
                } else {
                    this = sb4Var;
                }
            }
            this = sb4Var;
        }
        pu4 pu4VarG = rb4Var2.g();
        while (true) {
            Unsafe unsafe3 = pz0.a;
            long j2 = c;
            sb4 sb4Var2 = this;
            if (unsafe3.compareAndSwapObject(sb4Var2, j2, rb4Var2, pu4VarG) || unsafe3.getObjectVolatile(sb4Var2, j2) != rb4Var2) {
                return;
            } else {
                this = sb4Var2;
            }
        }
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return bm3Var.invoke(r, this);
    }

    @Override // defpackage.mb4
    public final hp2 g(nl3<? super Throwable, j59> nl3Var) {
        return R(true, new ia4(nl3Var));
    }

    public final int g0(Object obj) {
        Unsafe unsafe;
        Unsafe unsafe2;
        boolean z = obj instanceof ex2;
        long j = c;
        if (z) {
            if (((ex2) obj).b) {
                return 0;
            }
            ex2 ex2Var = vp2.i;
            do {
                unsafe2 = pz0.a;
                if (unsafe2.compareAndSwapObject(this, c, obj, ex2Var)) {
                    c0();
                    return 1;
                }
            } while (unsafe2.getObjectVolatile(this, j) == obj);
            return -1;
        }
        if (!(obj instanceof z34)) {
            return 0;
        }
        bo5 bo5Var = ((z34) obj).b;
        do {
            unsafe = pz0.a;
            if (unsafe.compareAndSwapObject(this, c, obj, bo5Var)) {
                c0();
                return 1;
            }
        } while (unsafe.getObjectVolatile(this, j) == obj);
        return -1;
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public final o22.b<?> getKey() {
        return mb4.a.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Throwable] */
    public final Object i0(Object obj, Object obj2) {
        sb4 sb4Var;
        if (!(obj instanceof a44)) {
            return vp2.c;
        }
        if ((!(obj instanceof ex2) && !(obj instanceof rb4)) || (obj instanceof hi1) || (obj2 instanceof yq1)) {
            sb4 sb4Var2 = this;
            a44 a44Var = (a44) obj;
            bo5 bo5VarK = sb4Var2.K(a44Var);
            if (bo5VarK == null) {
                return vp2.e;
            }
            c cVar = a44Var instanceof c ? (c) a44Var : null;
            if (cVar == null) {
                cVar = new c(bo5VarK, null);
            }
            c cVar2 = cVar;
            r07 r07Var = new r07();
            synchronized (cVar2) {
                if (cVar2.e()) {
                    return vp2.c;
                }
                pz0.a.putIntVolatile(cVar2, c.d, 1);
                if (cVar2 != a44Var) {
                    while (true) {
                        sb4Var = sb4Var2;
                        Unsafe unsafe = pz0.a;
                        long j = c;
                        sb4 sb4Var3 = sb4Var2;
                        sb4Var2 = sb4Var3;
                        if (unsafe.compareAndSwapObject(sb4Var3, j, a44Var, cVar2)) {
                            sb4Var = sb4Var2;
                            break;
                        }
                        if (unsafe.getObjectVolatile(sb4Var2, j) != a44Var) {
                            return vp2.e;
                        }
                    }
                }
                sb4Var = sb4Var2;
                boolean zD = cVar2.d();
                yq1 yq1Var = obj2 instanceof yq1 ? (yq1) obj2 : null;
                if (yq1Var != null) {
                    cVar2.a(yq1Var.a);
                }
                ?? C = zD ? 0 : cVar2.c();
                r07Var.b = C;
                j59 j59Var = j59.a;
                if (C != 0) {
                    sb4Var.a0(bo5VarK, C);
                }
                hi1 hi1VarY = Y(bo5VarK);
                if (hi1VarY != null && sb4Var.j0(cVar2, hi1VarY, obj2)) {
                    return vp2.d;
                }
                bo5VarK.c(new br4(2), 2);
                hi1 hi1VarY2 = Y(bo5VarK);
                return (hi1VarY2 == null || !sb4Var.j0(cVar2, hi1VarY2, obj2)) ? sb4Var.F(cVar2, obj2) : vp2.d;
            }
        }
        a44 a44Var2 = (a44) obj;
        Object e44Var = obj2 instanceof a44 ? new e44((a44) obj2) : obj2;
        while (true) {
            Unsafe unsafe2 = pz0.a;
            long j2 = c;
            sb4 sb4Var4 = this;
            if (unsafe2.compareAndSwapObject(sb4Var4, j2, a44Var2, e44Var)) {
                sb4Var4.b0(obj2);
                sb4Var4.C(a44Var2, obj2);
                return obj2;
            }
            if (unsafe2.getObjectVolatile(sb4Var4, j2) != a44Var2) {
                return vp2.e;
            }
            this = sb4Var4;
        }
    }

    @Override // defpackage.mb4
    public boolean isActive() {
        Object objL = L();
        return (objL instanceof a44) && ((a44) objL).isActive();
    }

    @Override // defpackage.mb4
    public final boolean isCancelled() {
        Object objL = L();
        if (objL instanceof yq1) {
            return true;
        }
        return (objL instanceof c) && ((c) objL).d();
    }

    public final boolean j0(c cVar, hi1 hi1Var, Object obj) {
        do {
            sb4 sb4Var = hi1Var.f;
            b bVar = new b(this, cVar, hi1Var, obj);
            if ((sb4Var != null ? sb4Var.R(false, bVar) : sb4Var.a(false, false, new pb4(bVar))) != go5.b) {
                return true;
            }
            hi1Var = Y(hi1Var);
        } while (hi1Var != null);
        return false;
    }

    public Object m() {
        return G();
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.mb4
    public final vl7 p() {
        g gVar = g.c;
        gVar.getClass();
        v39.c(3, gVar);
        return new vl7(this, gVar);
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }

    public void s(Object obj) {
    }

    @Override // defpackage.mb4
    public final boolean start() {
        int iG0;
        do {
            iG0 = g0(L());
            if (iG0 == 0) {
                return false;
            }
        } while (iG0 != 1);
        return true;
    }

    public void t(Object obj) {
        s(obj);
    }

    public final String toString() {
        return (X() + '{' + h0(L()) + '}') + '@' + cd2.a(this);
    }

    public final Object u(e02<Object> e02Var) throws Throwable {
        Object objL;
        do {
            objL = L();
            if (!(objL instanceof a44)) {
                if (objL instanceof yq1) {
                    throw ((yq1) objL).a;
                }
                return vp2.f(objL);
            }
        } while (g0(objL) < 0);
        a aVar = new a(zya.b(e02Var), this);
        aVar.u();
        aVar.w(new kp2(qb4.g(this, new z57(aVar))));
        Object objS = aVar.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    @Override // defpackage.mb4
    public final zo7<mb4> v() {
        return new cp7(new f(null, this));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003a A[PHI: r0
      0x003a: PHI (r0v1 java.lang.Object) = (r0v0 java.lang.Object), (r0v10 java.lang.Object) binds: [B:3:0x0008, B:16:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0058 A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0058, B:31:0x0062, B:37:0x0079, B:35:0x006f, B:36:0x0073), top: B:85:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0062 A[Catch: all -> 0x005f, TRY_ENTER, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0058, B:31:0x0062, B:37:0x0079, B:35:0x006f, B:36:0x0073), top: B:85:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x006f A[Catch: all -> 0x005f, TryCatch #0 {, blocks: (B:24:0x0049, B:26:0x0058, B:31:0x0062, B:37:0x0079, B:35:0x006f, B:36:0x0073), top: B:85:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:42:0x0086  */
    /* JADX WARN: Code duplicated, block: B:46:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cb A[LOOP:2: B:56:0x00b2->B:63:0x00cb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00db  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:82:0x0100 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:83:0x0101  */
    /* JADX WARN: Code duplicated, block: B:85:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x003e, please report this as an issue */
    public final boolean w(Object obj) {
        sb4 sb4Var;
        Throwable thD;
        Object objL;
        Throwable thC;
        bh8 bh8Var;
        Object objI0;
        a44 a44Var;
        bo5 bo5VarK;
        c cVar;
        Unsafe unsafe;
        long j;
        Object objI1 = vp2.c;
        if (J()) {
            do {
                Object objL2 = L();
                if (!(objL2 instanceof a44) || ((objL2 instanceof c) && ((c) objL2).e())) {
                    objI1 = vp2.c;
                    break;
                }
                objI1 = i0(objL2, new yq1(D(obj), false));
            } while (objI1 == vp2.e);
            if (objI1 != vp2.d) {
                if (objI1 == vp2.c) {
                    thD = null;
                    loop1: while (true) {
                        objL = this.L();
                        if (objL instanceof c) {
                            if (objL instanceof a44) {
                                if (thD == null) {
                                    thD = this.D(obj);
                                }
                                a44Var = (a44) objL;
                                if (a44Var.isActive()) {
                                    bo5VarK = this.K(a44Var);
                                    if (bo5VarK == null) {
                                        sb4Var = this;
                                    } else {
                                        cVar = new c(bo5VarK, thD);
                                        while (true) {
                                            unsafe = pz0.a;
                                            j = c;
                                            sb4Var = this;
                                            if (unsafe.compareAndSwapObject(sb4Var, j, a44Var, cVar)) {
                                                sb4Var.a0(bo5VarK, thD);
                                                objI0 = vp2.c;
                                            } else if (unsafe.getObjectVolatile(sb4Var, j) != a44Var) {
                                                this = sb4Var;
                                            }
                                        }
                                    }
                                    this = sb4Var;
                                } else {
                                    sb4Var = this;
                                    objI0 = sb4Var.i0(objL, new yq1(thD, false));
                                    if (objI0 != vp2.c) {
                                        ah.f(ad2.b(objL, "Cannot happen in "));
                                        return false;
                                    }
                                    if (objI0 != vp2.e) {
                                        this = sb4Var;
                                    }
                                }
                            } else {
                                sb4Var = this;
                                objI0 = vp2.f;
                            }
                            objI1 = objI0;
                            break;
                        }
                        synchronized (objL) {
                            if (pz0.a.getObjectVolatile((c) objL, c.c) == vp2.g) {
                                bh8Var = vp2.f;
                            } else {
                                boolean zD = ((c) objL).d();
                                if (obj == null || !zD) {
                                    if (thD == null) {
                                        thD = this.D(obj);
                                    }
                                    ((c) objL).a(thD);
                                }
                                thC = zD ? null : ((c) objL).c();
                                if (thC != null) {
                                    this.a0(((c) objL).b, thC);
                                }
                                bh8Var = vp2.c;
                            }
                        }
                        sb4Var = this;
                        objI1 = bh8Var;
                        break;
                    }
                }
                sb4Var = this;
                if (objI1 != vp2.c && objI1 != vp2.d) {
                    if (objI1 == vp2.f) {
                        return false;
                    }
                    sb4Var.s(objI1);
                    return true;
                }
            }
        } else {
            if (objI1 == vp2.c) {
                thD = null;
                loop1: while (true) {
                    objL = this.L();
                    if (objL instanceof c) {
                        if (objL instanceof a44) {
                            if (thD == null) {
                                thD = this.D(obj);
                            }
                            a44Var = (a44) objL;
                            if (a44Var.isActive()) {
                                bo5VarK = this.K(a44Var);
                                if (bo5VarK == null) {
                                    sb4Var = this;
                                } else {
                                    cVar = new c(bo5VarK, thD);
                                    while (true) {
                                        unsafe = pz0.a;
                                        j = c;
                                        sb4Var = this;
                                        if (unsafe.compareAndSwapObject(sb4Var, j, a44Var, cVar)) {
                                            sb4Var.a0(bo5VarK, thD);
                                            objI0 = vp2.c;
                                        } else if (unsafe.getObjectVolatile(sb4Var, j) != a44Var) {
                                            this = sb4Var;
                                        }
                                    }
                                }
                                this = sb4Var;
                            } else {
                                sb4Var = this;
                                objI0 = sb4Var.i0(objL, new yq1(thD, false));
                                if (objI0 != vp2.c) {
                                    ah.f(ad2.b(objL, "Cannot happen in "));
                                    return false;
                                }
                                if (objI0 != vp2.e) {
                                    this = sb4Var;
                                }
                            }
                        } else {
                            sb4Var = this;
                            objI0 = vp2.f;
                        }
                        objI1 = objI0;
                        break;
                    }
                    synchronized (objL) {
                        if (pz0.a.getObjectVolatile((c) objL, c.c) == vp2.g) {
                            bh8Var = vp2.f;
                        } else {
                            boolean zD2 = ((c) objL).d();
                            if (obj == null) {
                                if (thD == null) {
                                    thD = this.D(obj);
                                }
                                ((c) objL).a(thD);
                            } else {
                                if (thD == null) {
                                    thD = this.D(obj);
                                }
                                ((c) objL).a(thD);
                            }
                            if (zD2) {
                            }
                            if (thC != null) {
                                this.a0(((c) objL).b, thC);
                            }
                            bh8Var = vp2.c;
                        }
                        sb4Var = this;
                        objI1 = bh8Var;
                        break;
                    }
                }
            }
            sb4Var = this;
            if (objI1 != vp2.c) {
                if (objI1 == vp2.f) {
                    return false;
                }
                sb4Var.s(objI1);
                return true;
            }
        }
        return true;
    }

    public void x(CancellationException cancellationException) {
        w(cancellationException);
    }

    @Override // defpackage.mb4
    public final CancellationException y() {
        CancellationException cancellationException;
        Object objL = L();
        if (objL instanceof c) {
            Throwable thC = ((c) objL).c();
            if (thC == null) {
                og.e(this, "Job is still new or active: ");
                return null;
            }
            String strConcat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = thC instanceof CancellationException ? (CancellationException) thC : null;
            return cancellationException == null ? new JobCancellationException(strConcat, thC, this) : cancellationException;
        }
        if (objL instanceof a44) {
            og.e(this, "Job is still new or active: ");
            return null;
        }
        if (!(objL instanceof yq1)) {
            return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((yq1) objL).a;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new JobCancellationException(A(), th, this) : cancellationException;
    }

    public final boolean z(Throwable th) {
        if (!S()) {
            boolean z = th instanceof CancellationException;
            gi1 gi1Var = (gi1) pz0.a.getObjectVolatile(this, b);
            if (gi1Var == null || gi1Var == go5.b) {
                return z;
            }
            return gi1Var.a(th) || z;
        }
        return true;
    }
}
