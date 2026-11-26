package yads;

import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.transition.Scene;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import defpackage.j59;
import defpackage.jp7;
import defpackage.kd3;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.u96;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class vq0 extends g03 implements vh2 {
    public boolean A;
    public tt B;
    public hb2 C;
    public boolean D;
    public final Object E;
    public long F;
    public ph2 G;
    public final ll3 H;
    public final defpackage.cl4 I;
    public final GestureDetector J;
    public final sg3 K;
    public final LinkedHashMap L;
    public final LinkedHashMap M;
    public ViewTreeObserver.OnPreDrawListener N;
    public qb1 O;
    public qb1 P;
    public db1 Q;
    public lu0 R;
    public long S;
    public final String T;
    public boolean U;
    public final ld2 V;
    public final pq0 l;
    public final long m;
    public final nq0 n;
    public final wq0 o;
    public final tf6 p;
    public final xt q;
    public final lq0 r;
    public final ArrayList s;
    public final ArrayList t;
    public final ArrayList u;
    public final gp4 v;
    public final WeakHashMap w;
    public final rq0 x;
    public ub5 y;
    public ub5 z;

    public vq0(pq0 pq0Var, AttributeSet attributeSet, long j) {
        super(pq0Var, attributeSet, 0);
        this.l = pq0Var;
        this.m = j;
        nq0 nq0Var = pq0Var.b;
        this.n = nq0Var;
        nq0Var.getClass();
        wq0 wq0Var = new wq0(nq0Var, this);
        this.o = wq0Var;
        this.p = (tf6) wq0Var.h.getValue();
        this.q = new xt(this);
        this.r = (lq0) pq0Var.b.p0.getValue();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new gp4();
        this.w = new WeakHashMap();
        this.x = new rq0(this);
        ub5.a.getClass();
        this.z = tb5.b;
        this.B = new tt(this, fs2.a);
        this.E = new Object();
        int i = db1.i;
        this.F = -1L;
        this.G = ph2.a;
        this.H = new kd3(this, 6);
        this.I = defpackage.nm4.a(defpackage.po4.NONE, new defpackage.q(this, 10));
        this.J = new GestureDetector(pq0Var, new tq0(this), new Handler(Looper.getMainLooper()));
        this.K = (sg3) wq0Var.j.getValue();
        this.L = new LinkedHashMap();
        this.M = new LinkedHashMap();
        qb1 qb1Var = qb1.b;
        this.O = qb1Var;
        this.P = qb1Var;
        this.S = -1L;
        this.T = nq0Var.e.e.compareAndSet(true, false) ? ea1.g.compareAndSet(true, false) ? "Cold" : "Cool" : "Warm";
        this.U = true;
        this.V = new ld2(this);
        AtomicBoolean atomicBoolean = ea1.f;
        this.S = SystemClock.uptimeMillis();
        ((v55) nq0Var.E.getValue()).a(this);
    }

    public static final f65 d(vq0 vq0Var) {
        return (f65) ((g93) ((k93) jn1.b.a(vq0Var.l).a.b.b.get())).d.a.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a6 A[Catch: all -> 0x0029, TryCatch #0 {all -> 0x0029, blocks: (B:4:0x0009, B:7:0x0014, B:10:0x001a, B:12:0x001e, B:15:0x002c, B:16:0x003a, B:18:0x0040, B:19:0x004a, B:23:0x005a, B:24:0x0068, B:26:0x006f, B:28:0x0091, B:30:0x0097, B:36:0x00a6, B:37:0x00b2, B:34:0x009f, B:38:0x00d9, B:40:0x00ed, B:44:0x0104, B:47:0x010f, B:48:0x012c, B:50:0x0132, B:45:0x0108, B:46:0x010c), top: B:56:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2 A[SYNTHETIC] */
    public final void a(db1 db1Var, qb1 qb1Var) {
        String strA;
        String str;
        db1 db1Var2 = this.Q;
        synchronized (this.E) {
            try {
                this.q.getClass();
                int i = rv3.a;
                if (db1Var != null && this.Q != db1Var) {
                    if (this.A) {
                        o01.a(this, new RuntimeException("New binding started when previous not ended!"));
                    }
                    setInMiddleOfBind$mobileads_externalRelease(true);
                    gp4 gp4Var = this.v;
                    gp4Var.getClass();
                    fp4 fp4Var = new fp4(gp4Var);
                    while (fp4Var.hasNext()) {
                        ((du4) fp4Var.next()).a();
                    }
                    ((ar0) this.I.getValue()).d = true;
                    db1 db1Var3 = this.Q;
                    if (db1Var3 != null) {
                        db1Var2 = db1Var3;
                    }
                    c(db1Var, qb1Var);
                    setDataTag$mobileads_externalRelease(qb1Var);
                    for (cb1 cb1Var : db1Var.c) {
                        th2 th2Var = (th2) this.n.m.getValue();
                        br0 br0Var = cb1Var.a;
                        tt ttVar = this.B;
                        long j = cb1Var.b;
                        String strValueOf = String.valueOf(j);
                        p41 p41VarA = br0Var.a();
                        if (p41VarA instanceof z22) {
                            z22 z22Var = (z22) p41VarA;
                            str = z22Var.p;
                            if (str == null && (str = z22Var.x) == null) {
                                strA = "";
                            }
                            if (str == null) {
                                bz.a(0);
                                str = (String) bz.a.get(0);
                            }
                            n32 n32Var = new n32(j, defpackage.kx2.b, u96.i(strValueOf, str), 8);
                            sv1 sv1Var = ew1.d;
                            th2Var.getClass();
                            xv1 xv1Var = new xv1(sv1Var);
                            new sh2(th2Var, xv1Var, sv1Var).b(br0Var, ttVar, n32Var);
                            xv1Var.c();
                        } else {
                            strA = p41VarA.a();
                        }
                        str = strA;
                        if (str == null) {
                            bz.a(0);
                            str = (String) bz.a.get(0);
                        }
                        n32 n32Var2 = new n32(j, defpackage.kx2.b, u96.i(strValueOf, str), 8);
                        sv1 sv1Var2 = ew1.d;
                        th2Var.getClass();
                        xv1 xv1Var2 = new xv1(sv1Var2);
                        new sh2(th2Var, xv1Var2, sv1Var2).b(br0Var, ttVar, n32Var2);
                        xv1Var2.c();
                    }
                    boolean zA = b81.a(db1Var2, db1Var, this.F, a(this.y), a(this.z));
                    if (db1Var2 == null) {
                        b(db1Var, qb1Var);
                    } else if (qd2.a((nd2) db1Var.e.a(a(this.z)))) {
                        b(db1Var, qb1Var);
                    } else if (zA) {
                        a(db1Var);
                    } else {
                        b(db1Var, qb1Var);
                    }
                    ((w41) this.n.o0.getValue()).a();
                    y();
                    setInMiddleOfBind$mobileads_externalRelease(false);
                    gp4 gp4Var2 = this.v;
                    gp4Var2.getClass();
                    fp4 fp4Var2 = new fp4(gp4Var2);
                    while (fp4Var2.hasNext()) {
                        ((du4) fp4Var2.next()).b();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0120  */
    /* JADX WARN: Code duplicated, block: B:46:0x0134  */
    public final boolean b(db1 db1Var, qb1 qb1Var) {
        long j;
        long jUptimeMillis;
        View viewA;
        String strA;
        db1 db1Var2 = this.Q;
        defpackage.cl4 cl4Var = this.I;
        if (db1Var2 == null) {
            ar0 ar0Var = (ar0) cl4Var.getValue();
            ar0Var.getClass();
            ar0Var.e = Long.valueOf(SystemClock.uptimeMillis());
        } else {
            ar0 ar0Var2 = (ar0) cl4Var.getValue();
            ar0Var2.getClass();
            ar0Var2.h = Long.valueOf(SystemClock.uptimeMillis());
        }
        boolean z = false;
        a(false);
        setDataTag$mobileads_externalRelease(qb1Var);
        setDivData$mobileads_externalRelease(db1Var);
        cb1 cb1VarB = db1Var2 != null ? b(db1Var2) : null;
        cb1 cb1VarB2 = b(db1Var);
        bi2 bi2VarN = n();
        if (bi2VarN != null) {
            j = bi2VarN.a;
        } else if (db1Var.c.isEmpty()) {
            int i = db1.i;
            j = -1;
        } else {
            j = ((cb1) db1Var.c.get(0)).b;
        }
        setStateId$mobileads_externalRelease(j);
        if (cb1VarB2 != null) {
            long j2 = this.F;
            if (db1Var2 == null) {
                ((l32) this.n.z.getValue()).a(this.O, j2, true);
                long j3 = cb1VarB2.b;
                br0 br0Var = cb1VarB2.a;
                String strValueOf = String.valueOf(j3);
                p41 p41VarA = br0Var.a();
                if (p41VarA instanceof z22) {
                    z22 z22Var = (z22) p41VarA;
                    strA = z22Var.p;
                    if (strA == null && (strA = z22Var.x) == null) {
                        strA = "";
                    }
                } else {
                    strA = p41VarA.a();
                }
                if (strA == null) {
                    bz.a(0);
                    strA = (String) bz.a.get(0);
                }
                n32 n32Var = new n32(j3, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
                viewA = this.r.a(cb1VarB2.a, this.B, n32Var);
                ((w41) this.n.o0.getValue()).a(this.B, viewA, cb1VarB2.a, n32Var);
                if (isAttachedToWindow()) {
                    ((w41) this.n.o0.getValue()).a();
                } else {
                    addOnAttachStateChangeListener(new sq0(this, this));
                }
            } else {
                viewA = a(cb1VarB2, j2, true);
            }
            if (cb1VarB != null) {
                a(cb1VarB);
            }
            b(cb1VarB2);
            if (db1Var2 != null) {
                if (!qd2.a((nd2) db1Var2.e.a(a(this.y)))) {
                    z = qd2.a((nd2) db1Var.e.a(a(this.z)));
                }
            } else if (qd2.a((nd2) db1Var.e.a(a(this.z)))) {
            }
            a(db1Var2, db1Var, cb1VarB != null ? cb1VarB.a : null, cb1VarB2, viewA, z, false);
            z = true;
        }
        c(db1Var);
        defpackage.cl4 cl4Var2 = this.I;
        if (db1Var2 != null) {
            ((ar0) cl4Var2.getValue()).b();
            return z;
        }
        ar0 ar0Var3 = (ar0) cl4Var2.getValue();
        Long l = ar0Var3.e;
        Long l2 = ar0Var3.f;
        Long l3 = ar0Var3.g;
        g65 g65Var = (g65) ar0Var3.l.getValue();
        if (l != null) {
            if (l2 != null && l3 != null) {
                jUptimeMillis = (l2.longValue() + (SystemClock.uptimeMillis() - l3.longValue())) - l.longValue();
            } else if (l2 == null && l3 == null) {
                jUptimeMillis = SystemClock.uptimeMillis() - l.longValue();
            }
            long j4 = jUptimeMillis;
            g65Var.a = j4;
            n93.a((n93) ar0Var3.a.invoke(), "Div.Binding", j4, ar0Var3.c, null, null, 24);
        }
        ar0Var3.e = null;
        ar0Var3.f = null;
        ar0Var3.g = null;
        return z;
    }

    public final void c(db1 db1Var, qb1 qb1Var) {
        ub5 ub5Var;
        if (db1Var == null) {
            return;
        }
        this.y = this.z;
        wb5 wb5Var = (wb5) this.n.D.getValue();
        WeakHashMap weakHashMap = wb5Var.d;
        Object linkedHashSet = weakHashMap.get(this);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
            weakHashMap.put(this, linkedHashSet);
        }
        ((Set) linkedHashSet).add(qb1Var.a);
        ub5 vb5Var = (ub5) wb5Var.c.get(qb1Var.a);
        if (vb5Var != null) {
            wb5.a(vb5Var.a().a, db1Var, wb5Var.b.a(db1Var, qb1Var));
            d26 d26Var = vb5Var.a().b;
            if (d26Var != null) {
                List list = db1Var.f;
                if (list == null) {
                    list = defpackage.kx2.b;
                }
                d26Var.a(list);
            }
        } else {
            vb5Var = new vb5(db1Var, wb5Var.a, wb5Var.b.a(db1Var, qb1Var));
            wb5Var.c.put(qb1Var.a, vb5Var);
        }
        setRuntimeStore$mobileads_externalRelease(vb5Var);
        this.z.b();
        if (!defpackage.aa4.e(this.y, this.z) && (ub5Var = this.y) != null) {
            ub5Var.c(this);
        }
        setBindingContext$mobileads_externalRelease(new tt(this, a(this.z)));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.U) {
            ar0 ar0Var = (ar0) this.I.getValue();
            ar0Var.getClass();
            ar0Var.k = Long.valueOf(SystemClock.uptimeMillis());
        }
        super.dispatchDraw(canvas);
        if (this.U) {
            ((ar0) this.I.getValue()).a();
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        this.U = false;
        ar0 ar0Var = (ar0) this.I.getValue();
        ar0Var.getClass();
        ar0Var.k = Long.valueOf(SystemClock.uptimeMillis());
        super.draw(canvas);
        ((ar0) this.I.getValue()).a();
        this.U = true;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        if (view != null && view.getVisibility() == 0) {
            tq.a(view, canvas);
        }
        return super.drawChild(canvas, view, j);
    }

    public final void j() {
        synchronized (this.E) {
            a(true);
            j59 j59Var = j59.a;
        }
    }

    public final void k() {
        synchronized (this.E) {
            this.t.clear();
            j59 j59Var = j59.a;
        }
    }

    public final void l() {
        cb1 cb1Var;
        fs2 fs2Var;
        List list;
        Object next;
        db1 db1Var = this.Q;
        if (db1Var == null || (list = db1Var.c) == null) {
            cb1Var = null;
        } else {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((cb1) next).b != this.F);
            cb1Var = (cb1) next;
        }
        if (cb1Var != null) {
            a(cb1Var);
        }
        bj2 bj2Var = (bj2) this.n.I.getValue();
        for (Map.Entry entry : this.w.entrySet()) {
            View view = (View) entry.getKey();
            br0 br0Var = (br0) entry.getValue();
            tt ttVarA = pq.a(view);
            if (ttVarA != null && (fs2Var = ttVarA.b) != null) {
                bj2.a(bj2Var, this, fs2Var, null, br0Var);
            }
        }
    }

    public final tt m() {
        return this.B;
    }

    public final bi2 n() {
        db1 db1Var = this.Q;
        if (db1Var == null) {
            return null;
        }
        bi2 bi2VarA = ((l32) this.n.z.getValue()).a(this.O);
        List<cb1> list = db1Var.c;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (cb1 cb1Var : list) {
                if (bi2VarA != null && cb1Var.b == bi2VarA.a) {
                    return bi2VarA;
                }
            }
        }
        return null;
    }

    public final qb1 o() {
        return this.O;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        c(this.Q);
        hb2 hb2Var = this.C;
        if (hb2Var != null) {
            hb2Var.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
        hb2 hb2Var = this.C;
        if (hb2Var != null) {
            for (sx5 sx5Var : hb2Var.b.values()) {
                if (this == sx5Var.e) {
                    sx5Var.e = null;
                    uw5 uw5Var = sx5Var.j;
                    if (uw5Var.m != -1) {
                        uw5Var.l += SystemClock.elapsedRealtime() - uw5Var.m;
                        uw5Var.n = SystemClock.elapsedRealtime();
                        uw5Var.m = -1L;
                    }
                    uw5Var.b();
                    sx5Var.i = true;
                }
            }
        }
        ((a21) this.o.k.getValue()).a();
        this.z.b(this);
    }

    @Override // yads.g03, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        List list;
        ar0 ar0Var = (ar0) this.I.getValue();
        ar0Var.getClass();
        ar0Var.j = Long.valueOf(SystemClock.uptimeMillis());
        super.onLayout(z, i, i2, i3, i4);
        db1 db1Var = this.Q;
        cb1 cb1Var = null;
        Object obj = null;
        cb1Var = null;
        if (db1Var != null && (list = db1Var.c) != null) {
            for (Object obj2 : list) {
                if (((cb1) obj2).b == this.F) {
                    obj = obj2;
                    break;
                }
            }
            cb1Var = (cb1) obj;
        }
        if (cb1Var != null) {
            b(cb1Var);
        }
        z();
        ar0 ar0Var2 = (ar0) this.I.getValue();
        Long l = ar0Var2.j;
        if (l != null) {
            ((g65) ar0Var2.l.getValue()).d += SystemClock.uptimeMillis() - l.longValue();
        }
    }

    @Override // yads.g03, android.view.View
    public final void onMeasure(int i, int i2) {
        ar0 ar0Var = (ar0) this.I.getValue();
        ar0Var.getClass();
        ar0Var.i = Long.valueOf(SystemClock.uptimeMillis());
        super.onMeasure(i, i2);
        ar0 ar0Var2 = (ar0) this.I.getValue();
        Long l = ar0Var2.i;
        if (l != null) {
            ((g65) ar0Var2.l.getValue()).c += SystemClock.uptimeMillis() - l.longValue();
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.K.a != null) {
            this.J.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 0) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final mq0 p() {
        return this.n;
    }

    public final db1 q() {
        return this.Q;
    }

    public final qb1 r() {
        return this.O;
    }

    public final String s() {
        String str;
        db1 db1Var = this.Q;
        return (db1Var == null || (str = db1Var.b) == null) ? "" : str;
    }

    public void setActionHandler(lu0 lu0Var) {
        this.R = lu0Var;
    }

    public void setBindOnAttachRunnable$mobileads_externalRelease(ml5 ml5Var) {
    }

    public void setBindingContext$mobileads_externalRelease(tt ttVar) {
        this.B = ttVar;
    }

    public void setClearVariablesListener$mobileads_externalRelease(ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        this.N = onPreDrawListener;
    }

    public void setComponentName(String str) {
        ((ar0) this.I.getValue()).c = str;
    }

    public void setConfig(ph2 ph2Var) {
        this.G = ph2Var;
    }

    public void setDataTag$mobileads_externalRelease(qb1 qb1Var) {
        setPrevDataTag$mobileads_externalRelease(this.O);
        this.O = qb1Var;
        tf6 tf6Var = this.p;
        db1 db1Var = this.Q;
        if (defpackage.aa4.e(qb1Var, tf6Var.a.a) && tf6Var.a.b == db1Var) {
            return;
        }
        tf6Var.a = new st(db1Var, qb1Var);
        Iterator it = tf6Var.b.iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(tf6Var.a);
        }
    }

    public void setDivData$mobileads_externalRelease(db1 db1Var) {
        Object obj;
        hb2 hb2Var;
        hb2 hb2Var2;
        this.Q = db1Var;
        c(db1Var, this.O);
        db1 db1Var2 = this.Q;
        if (db1Var2 != null) {
            ib2 ib2Var = (ib2) this.n.V.getValue();
            qb1 qb1Var = this.O;
            fs2 fs2VarA = a(this.z);
            ib2Var.getClass();
            List<gb2> list = db1Var2.d;
            if (list == null) {
                hb2Var = null;
            } else {
                ao2 ao2VarA = ib2Var.b.a(db1Var2, qb1Var);
                Map map = ib2Var.c;
                String str = qb1Var.a;
                Object obj2 = map.get(str);
                if (obj2 == null) {
                    obj = obj2;
                    hb2 hb2Var3 = new hb2(ao2VarA);
                    for (gb2 gb2Var : list) {
                        sx5 sx5Var = new sx5(gb2Var, ib2Var.a, ao2VarA, fs2VarA);
                        String str2 = gb2Var.c;
                        if (!hb2Var3.b.containsKey(str2)) {
                            hb2Var3.b.put(str2, sx5Var);
                        }
                    }
                    map.put(str, hb2Var3);
                    obj = hb2Var3;
                }
                obj = obj2;
                hb2Var = (hb2) obj;
                for (gb2 gb2Var2 : list) {
                    String str3 = gb2Var2.c;
                    if ((hb2Var.c.contains(str3) ? (sx5) hb2Var.b.get(str3) : null) == null) {
                        sx5 sx5Var2 = new sx5(gb2Var2, ib2Var.a, ao2VarA, fs2VarA);
                        String str4 = gb2Var2.c;
                        if (!hb2Var.b.containsKey(str4)) {
                            hb2Var.b.put(str4, sx5Var2);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((gb2) it.next()).c);
                }
                LinkedHashMap linkedHashMap = hb2Var.b;
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (!arrayList.contains(entry.getKey())) {
                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                    }
                }
                for (sx5 sx5Var3 : linkedHashMap2.values()) {
                    sx5Var3.e = null;
                    uw5 uw5Var = sx5Var3.j;
                    if (uw5Var.m != -1) {
                        uw5Var.l += SystemClock.elapsedRealtime() - uw5Var.m;
                        uw5Var.n = SystemClock.elapsedRealtime();
                        uw5Var.m = -1L;
                    }
                    uw5Var.b();
                    sx5Var3.i = true;
                }
                hb2Var.c.clear();
                hb2Var.c.addAll(arrayList);
            }
            if (!defpackage.aa4.e(this.C, hb2Var) && (hb2Var2 = this.C) != null) {
                for (sx5 sx5Var4 : hb2Var2.b.values()) {
                    if (this == sx5Var4.e) {
                        sx5Var4.e = null;
                        uw5 uw5Var2 = sx5Var4.j;
                        if (uw5Var2.m != -1) {
                            uw5Var2.l += SystemClock.elapsedRealtime() - uw5Var2.m;
                            uw5Var2.n = SystemClock.elapsedRealtime();
                            uw5Var2.m = -1L;
                        }
                        uw5Var2.b();
                        sx5Var4.i = true;
                    }
                }
            }
            setDivTimerEventDispatcher$mobileads_externalRelease(hb2Var);
            if (hb2Var != null) {
                hb2Var.a(this);
            }
        }
        tf6 tf6Var = this.p;
        qb1 qb1Var2 = this.O;
        db1 db1Var3 = this.Q;
        if (defpackage.aa4.e(qb1Var2, tf6Var.a.a) && tf6Var.a.b == db1Var3) {
            return;
        }
        tf6Var.a = new st(db1Var3, qb1Var2);
        Iterator it2 = tf6Var.b.iterator();
        while (it2.hasNext()) {
            ((nl3) it2.next()).invoke(tf6Var.a);
        }
    }

    public void setDivTimerEventDispatcher$mobileads_externalRelease(hb2 hb2Var) {
        this.C = hb2Var;
    }

    public void setForceCanvasClipping(boolean z) {
        this.D = z;
    }

    public void setInMiddleOfBind$mobileads_externalRelease(boolean z) {
        this.A = z;
    }

    public void setPrevDataTag$mobileads_externalRelease(qb1 qb1Var) {
        this.P = qb1Var;
    }

    public void setRuntimeStore$mobileads_externalRelease(ub5 ub5Var) {
        this.z = ub5Var;
    }

    public void setStateId$mobileads_externalRelease(long j) {
        this.F = j;
    }

    public void setVisualErrorsEnabled(boolean z) {
        ho2 ho2Var = (ho2) this.o.i.getValue();
        ho2Var.c = z;
        ho2Var.a();
    }

    public final qb1 t() {
        return this.P;
    }

    public final w55 u() {
        return (w55) this.o.d.getValue();
    }

    public final xb2 v() {
        return (xb2) this.n.L.getValue();
    }

    public final wq0 w() {
        return this.o;
    }

    public final br0 x() {
        cb1 cb1VarB;
        db1 db1Var = this.Q;
        if (db1Var == null || (cb1VarB = b(db1Var)) == null) {
            return null;
        }
        return cb1VarB.a;
    }

    public final void y() {
        long j;
        long j2 = this.S;
        if (j2 < 0) {
            return;
        }
        nq0 nq0Var = this.n;
        ea1 ea1Var = nq0Var.e;
        long j3 = this.m;
        n93 n93Var = (n93) nq0Var.o.getValue();
        String str = this.T;
        if (j2 < 0) {
            j = -1;
        } else {
            j = -1;
            n93.a(n93Var, "Div.View.Create", j2 - j3, null, str, null, 20);
            if (ea1Var.c.compareAndSet(false, true)) {
                long j4 = ea1Var.b;
                if (j4 >= 0) {
                    n93.a(n93Var, "Div.Context.Create", j4 - ea1Var.a, null, ea1Var.d, null, 20);
                    ea1Var.b = -1L;
                }
            }
        }
        this.S = j;
    }

    public final void z() {
        fs2 fs2Var;
        bj2 bj2Var = (bj2) this.n.I.getValue();
        for (Map.Entry entry : this.w.entrySet()) {
            View view = (View) entry.getKey();
            br0 br0Var = (br0) entry.getValue();
            tt ttVarA = pq.a(view);
            if (ttVarA != null && (fs2Var = ttVarA.b) != null) {
                if (ViewCompat.isAttachedToWindow(view)) {
                    bj2.a(bj2Var, this, fs2Var, view, br0Var);
                } else {
                    bj2.a(bj2Var, this, fs2Var, null, br0Var);
                }
            }
        }
    }

    public static final n93 c(vq0 vq0Var) {
        return (n93) vq0Var.n.o.getValue();
    }

    public final void c(db1 db1Var) {
        cb1 cb1VarB;
        String strA;
        if (db1Var == null || (cb1VarB = b(db1Var)) == null) {
            return;
        }
        my1 my1Var = (my1) this.o.a.A.getValue();
        br0 br0Var = cb1VarB.a;
        long j = cb1VarB.b;
        String strValueOf = String.valueOf(j);
        p41 p41VarA = br0Var.a();
        if (p41VarA instanceof z22) {
            strA = du1.a((z22) p41VarA);
        } else {
            strA = p41VarA.a();
        }
        if (strA == null) {
            bz.a(0);
            strA = (String) bz.a.get(0);
        }
        n32 n32Var = new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
        my1Var.getClass();
        ms2 ms2VarA = this.z.a();
        d26 d26Var = ms2VarA.b;
        if (d26Var != null) {
            d26Var.b(this);
        }
        my1Var.b(br0Var, this, n32Var, ms2VarA);
    }

    public vq0(pq0 pq0Var, AttributeSet attributeSet, int i) {
        this(pq0Var, (i & 2) != 0 ? null : attributeSet, SystemClock.uptimeMillis());
    }

    public static final void a(vq0 vq0Var) {
        Iterator<View> it = ViewGroupKt.getChildren(vq0Var).iterator();
        while (it.hasNext()) {
            di2.a(vq0Var.u(), it.next());
        }
        vq0Var.removeAllViews();
    }

    public final View a(cb1 cb1Var, long j, boolean z) {
        String strA;
        ((l32) this.n.z.getValue()).a(this.O, j, z);
        lq0 lq0Var = this.r;
        br0 br0Var = cb1Var.a;
        tt ttVar = this.B;
        long j2 = cb1Var.b;
        String strValueOf = String.valueOf(j2);
        p41 p41VarA = br0Var.a();
        if (p41VarA instanceof z22) {
            strA = du1.a((z22) p41VarA);
        } else {
            strA = p41VarA.a();
        }
        if (strA == null) {
            bz.a(0);
            strA = (String) bz.a.get(0);
        }
        n32 n32Var = new n32(j2, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
        View viewA = lq0Var.a(br0Var, ttVar, n32Var);
        lq0Var.b.a(ttVar, viewA, br0Var, n32Var);
        ((w41) this.n.o0.getValue()).a();
        return viewA;
    }

    public final void a(cb1 cb1Var) {
        bj2.a((bj2) this.n.I.getValue(), this, a(this.z), null, cb1Var.a);
    }

    public static final boolean a(defpackage.fr frVar, cn1 cn1Var) {
        List listC = cn1Var.a.a().c();
        if (listC != null) {
            return listC.contains(pd2.DATA_CHANGE);
        }
        nd2 nd2Var = (nd2) frVar.j();
        if (nd2Var != null) {
            return qd2.a(nd2Var);
        }
        return false;
    }

    public final void a(du3 du3Var) {
        synchronized (this.E) {
            this.s.add(du3Var);
        }
    }

    public final void a(boolean z) {
        l();
        Iterator it = this.s.iterator();
        while (it.hasNext()) {
            ((du3) it.next()).cancel();
        }
        this.s.clear();
        Iterator<View> it2 = ViewGroupKt.getChildren(this).iterator();
        while (it2.hasNext()) {
            di2.a((f14) this.o.e.getValue(), it2.next());
        }
        this.w.clear();
        xb2 xb2VarV = v();
        xb2VarV.getClass();
        xb2VarV.a(this);
        k();
        this.u.clear();
        ((yv3) ((fu) this.n.n.getValue())).a();
        if (z) {
            Iterator<View> it3 = ViewGroupKt.getChildren(this).iterator();
            while (it3.hasNext()) {
                di2.a(u(), it3.next());
            }
            removeAllViews();
        }
        ao2 ao2VarB = this.o.b().b(this.Q, this.O);
        if (ao2VarB != null) {
            ao2VarB.d.clear();
            ao2VarB.b.clear();
            ao2VarB.a();
        }
        setDivData$mobileads_externalRelease(null);
        setDataTag$mobileads_externalRelease(qb1.b);
    }

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
    public final void a(n32 n32Var, boolean z) {
        List list;
        synchronized (this.E) {
            try {
                db1 db1Var = this.Q;
                cb1 cb1Var = null;
                Object obj = null;
                cb1Var = null;
                if (db1Var != null && (list = db1Var.c) != null) {
                    for (Object obj2 : list) {
                        if (((cb1) obj2).b == n32Var.a) {
                            obj = obj2;
                            break;
                        }
                    }
                    cb1Var = (cb1) obj;
                }
                this.x.a(cb1Var, n32Var, z);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(long j, boolean z) {
        Object next;
        Object next2;
        View viewA;
        setStateId$mobileads_externalRelease(j);
        bi2 bi2VarN = n();
        Long lValueOf = bi2VarN != null ? Long.valueOf(bi2VarN.a) : null;
        db1 db1Var = this.Q;
        if (db1Var == null) {
            return;
        }
        Iterator it = db1Var.c.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            long j2 = ((cb1) next).b;
            if (lValueOf != null && j2 == lValueOf.longValue()) {
                break;
            }
        }
        cb1 cb1Var = (cb1) next;
        Iterator it2 = db1Var.c.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (((cb1) next2).b != j);
        cb1 cb1Var2 = (cb1) next2;
        if (cb1Var2 == null) {
            return;
        }
        if (cb1Var != null) {
            a(cb1Var);
        }
        b(cb1Var2);
        boolean zA = b81.a(cb1Var != null ? cb1Var.a : null, cb1Var2.a, a(this.z), a(this.z));
        if (zA) {
            viewA = getChildAt(0);
            ((l32) this.n.z.getValue()).a(this.O, j, z);
            ((w41) this.n.o0.getValue()).a();
        } else {
            viewA = a(cb1Var2, j, z);
        }
        a(db1Var, db1Var, cb1Var != null ? cb1Var.a : null, cb1Var2, viewA, qd2.a((nd2) db1Var.e.a(a(this.z))), zA);
    }

    public static final ar0 b(vq0 vq0Var) {
        return new ar0(new defpackage.s(vq0Var, 7), vq0Var.H);
    }

    public final void a(db1 db1Var, db1 db1Var2, br0 br0Var, cb1 cb1Var, View view, boolean z, boolean z2) {
        String strA;
        br0 br0Var2;
        TransitionSet transitionSet = null;
        if (z && br0Var != (br0Var2 = cb1Var.a)) {
            TransitionSet transitionSetA = ((hd2) this.o.c.getValue()).a(br0Var != null ? a(db1Var, br0Var, a(this.y)) : null, br0Var2 != null ? a(db1Var2, br0Var2, a(this.z)) : null, a(this.y), a(this.z));
            if (transitionSetA.getTransitionCount() != 0) {
                this.n.c.getClass();
                transitionSetA.addListener((Transition.TransitionListener) new uq0(transitionSetA, this, db1Var2));
                transitionSet = transitionSetA;
            }
        }
        if (transitionSet != null) {
            Scene currentScene = Scene.getCurrentScene(this);
            if (currentScene != null) {
                currentScene.setExitAction(new defpackage.iu0(this, 4));
            }
        } else {
            Iterator<View> it = ViewGroupKt.getChildren(this).iterator();
            while (it.hasNext()) {
                di2.a(u(), it.next());
            }
            removeAllViews();
        }
        if (z2) {
            w41 w41Var = (w41) this.n.o0.getValue();
            tt ttVar = this.B;
            br0 br0Var3 = cb1Var.a;
            long j = cb1Var.b;
            String strValueOf = String.valueOf(j);
            p41 p41VarA = br0Var3.a();
            if (p41VarA instanceof z22) {
                strA = du1.a((z22) p41VarA);
            } else {
                strA = p41VarA.a();
            }
            if (strA == null) {
                bz.a(0);
                strA = (String) bz.a.get(0);
            }
            w41Var.a(ttVar, view, br0Var3, new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8));
        }
        if (transitionSet != null) {
            TransitionManager.endTransitions(this);
            Scene scene = new Scene(this, view);
            ad5.a(scene.getSceneRoot(), transitionSet);
            TransitionManager.go(scene, transitionSet);
            return;
        }
        addView(view);
        ho2 ho2Var = (ho2) this.o.i.getValue();
        ho2Var.e = this;
        if (ho2Var.c) {
            fo2 fo2Var = ho2Var.f;
            if (fo2Var != null) {
                fo2Var.close();
            }
            ho2Var.f = new fo2(this, ho2Var.d, ho2Var.b);
        }
    }

    public final void b(cb1 cb1Var) {
        bj2.a((bj2) this.n.I.getValue(), this, a(this.z), this, cb1Var.a);
    }

    public final void b(long j, boolean z) {
        synchronized (this.E) {
            try {
                int i = db1.i;
                if (j != -1) {
                    a(j, z);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final cb1 b(db1 db1Var) {
        long j;
        Object next;
        bi2 bi2VarN = n();
        if (bi2VarN != null) {
            j = bi2VarN.a;
        } else if (db1Var.c.isEmpty()) {
            int i = db1.i;
            j = -1;
        } else {
            j = ((cb1) db1Var.c.get(0)).b;
        }
        Iterator it = db1Var.c.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((cb1) next).b == j) {
                return (cb1) next;
            }
        }
        next = null;
        return (cb1) next;
    }

    public static zo7 a(db1 db1Var, br0 br0Var, fs2 fs2Var) {
        nd2 nd2Var;
        as2 as2Var;
        defpackage.fr frVar = new defpackage.fr();
        if (db1Var == null || (as2Var = db1Var.e) == null || (nd2Var = (nd2) as2Var.a(fs2Var)) == null) {
            nd2Var = nd2.NONE;
        }
        frVar.addLast(nd2Var);
        return jp7.k(xd2.a(br0Var, fs2Var).a(new defpackage.nd6(1, frVar, fs2Var)).b(new defpackage.ca2(frVar, 8)), new defpackage.uk5(frVar, 4));
    }

    public static final boolean a(defpackage.fr frVar, fs2 fs2Var, br0 br0Var) {
        if (!(br0Var instanceof gq0)) {
            return true;
        }
        frVar.addLast(((gq0) br0Var).a.L.a(fs2Var));
        return true;
    }

    public static final j59 a(defpackage.fr frVar, br0 br0Var) {
        if (br0Var instanceof gq0) {
            frVar.removeLast();
        }
        return j59.a;
    }

    public final void a(at0 at0Var) {
        synchronized (this.E) {
            this.t.add(at0Var);
        }
    }

    public static fs2 a(ub5 ub5Var) {
        ms2 ms2Var;
        gs2 gs2Var;
        vb5 vb5Var = ub5Var instanceof vb5 ? (vb5) ub5Var : null;
        return (vb5Var == null || (ms2Var = vb5Var.j) == null || (gs2Var = ms2Var.a) == null) ? fs2.a : gs2Var;
    }

    public final void a(db1 db1Var) {
        Object next;
        String strA;
        try {
            if (getChildCount() == 0) {
                b(db1Var, this.O);
                return;
            }
            Iterator it = db1Var.c.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((cb1) next).b != this.F);
            cb1 cb1Var = (cb1) next;
            if (cb1Var == null) {
                cb1Var = (cb1) defpackage.qn1.V(db1Var.c);
            }
            if (cb1Var == null) {
                return;
            }
            ar0 ar0Var = (ar0) this.I.getValue();
            ar0Var.getClass();
            ar0Var.h = Long.valueOf(SystemClock.uptimeMillis());
            ao2 ao2VarB = this.o.b().b(this.Q, this.O);
            if (ao2VarB != null) {
                ao2VarB.d.clear();
                ao2VarB.b.clear();
                ao2VarB.a();
            }
            setDivData$mobileads_externalRelease(db1Var);
            ((l32) this.n.z.getValue()).a(this.O, cb1Var.b, true);
            w41 w41Var = (w41) this.n.o0.getValue();
            tt ttVar = this.B;
            View childAt = getChildAt(0);
            br0 br0Var = cb1Var.a;
            long j = cb1Var.b;
            String strValueOf = String.valueOf(j);
            p41 p41VarA = br0Var.a();
            if (p41VarA instanceof z22) {
                strA = du1.a((z22) p41VarA);
            } else {
                strA = p41VarA.a();
            }
            if (strA == null) {
                bz.a(0);
                strA = (String) bz.a.get(0);
            }
            w41Var.a(ttVar, childAt, br0Var, new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8));
            requestLayout();
            c(db1Var);
            ((ar0) this.I.getValue()).b();
        } catch (Exception unused) {
            b(db1Var, this.O);
        }
    }

    public final void a(ll3 ll3Var) {
        rq0 rq0Var = this.x;
        rq0Var.a++;
        ll3Var.invoke();
        int i = rq0Var.a - 1;
        rq0Var.a = i;
        if (i == 0) {
            rq0Var.a();
        }
    }
}
