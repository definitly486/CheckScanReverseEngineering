package yads;

import android.content.Context;
import android.os.SystemClock;
import defpackage.j59;
import defpackage.r57;
import defpackage.rm9;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pp implements tu4, nz {
    public final Context a;
    public final t5 b;
    public final e4 c;
    public final bf5 d;
    public final defpackage.y22 e;
    public final b8 f;
    public final xa g;
    public final qi5 h;
    public final eu3 i;
    public final rf5 j;
    public final s83 k;
    public final ny4 l;
    public final it5 m;
    public final v85 n;
    public final uu4 o;
    public final s4 p;
    public final n4 q;
    public w5 r;
    public boolean s;
    public long t;
    public defpackage.y22 u;
    public wn v;
    public d9 w;
    public final dp x;
    public final d34 y;

    public pp(Context context, t5 t5Var, e4 e4Var, bf5 bf5Var, defpackage.y22 y22Var, n4 n4Var) {
        b8 b8Var = new b8(e4Var, context, t5Var, new s7(e4Var, bf5Var, t5Var));
        xa xaVar = new xa();
        qi5 qi5Var = new qi5();
        eu3 eu3Var = new eu3(context, e4Var);
        rf5 rf5Var = new rf5(context, bf5Var, y22Var, t5Var, null, null, 4194288);
        s83 s83Var = new s83(e4Var, bf5Var);
        ny4 ny4Var = new ny4(e4Var, bf5Var);
        if (it5.b == null) {
            synchronized (it5.c) {
                try {
                    if (it5.b == null) {
                        it5.b = new it5();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        it5 it5Var = it5.b;
        if (it5Var == null) {
            defpackage.ah.f("Required value was null.");
            throw null;
        }
        v85 v85Var = new v85();
        uu4 uu4VarA = uu4.h.a(context);
        s4 s4Var = new s4(context);
        this.a = context;
        this.b = t5Var;
        this.c = e4Var;
        this.d = bf5Var;
        this.e = y22Var;
        this.f = b8Var;
        this.g = xaVar;
        this.h = qi5Var;
        this.i = eu3Var;
        this.j = rf5Var;
        this.k = s83Var;
        this.l = ny4Var;
        this.m = it5Var;
        this.n = v85Var;
        this.o = uu4VarA;
        this.p = s4Var;
        this.q = n4Var;
        this.r = w5.NOT_STARTED;
        this.x = new dp(t5Var, e4Var, bf5Var, b8Var);
        this.y = new d34(b8Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ac, code lost:
    
        if (defpackage.av0.d(r9, r2, r0) == r1) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c5, code lost:
    
        if (defpackage.av0.d(r9, r10, r0) == r1) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(yads.t46 r9, defpackage.f02 r10) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.pp.a(yads.t46, f02):java.lang.Object");
    }

    public abstract void a(d9 d9Var);

    public synchronized void b() {
        try {
            if (!a()) {
                this.s = true;
                k();
                defpackage.qb4.d(this.j.c.getCoroutineContext());
                s4 s4Var = this.p;
                z75 z75Var = s4Var.a;
                z75.a(s4Var.b);
                this.m.a(dr3.LOAD, this);
                this.w = null;
                this.f.b();
                defpackage.z22.b(this.e, null);
                defpackage.y22 y22Var = this.u;
                if (y22Var != null) {
                    defpackage.z22.b(y22Var, null);
                }
                getClass().toString();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(n8 n8Var) {
        try {
            a(w5.LOADING);
            this.c.e = n8Var;
            m4 m4VarL = l();
            if (m4VarL == null) {
                defpackage.av0.c(j(), null, null, new ip(this, null), 3);
            } else {
                b(m4VarL);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean d() {
        return this.r == w5.CANCELLED;
    }

    public void e() {
        f();
    }

    public synchronized void f() {
        wn wnVar = this.v;
        if (wnVar != null) {
            wnVar.b();
        }
    }

    public final void g() {
        String str;
        f75 f75Var = f75.SUCCESS;
        x54 x54Var = this.c.k;
        if (x54Var == null || (str = x54Var.b) == null) {
            str = c75.a;
        }
        this.b.a(s5.ADAPTER_LOADING, new gb(f75Var, str), null);
        this.b.a(s5.AD_LOADING);
        this.m.a(dr3.LOAD, this);
        a(w5.SUCCESSFULLY_LOADED);
        this.t = SystemClock.elapsedRealtime();
    }

    public void h() {
        t4.a(this.c.a.b);
        defpackage.y22 y22Var = this.u;
        if (y22Var != null) {
            defpackage.z22.b(y22Var, null);
        }
        this.u = null;
        g();
        f();
    }

    public final void i() {
        getClass().toString();
        this.o.a(this);
    }

    public final defpackage.y22 j() {
        defpackage.y22 y22Var = this.u;
        if (y22Var != null) {
            defpackage.z22.b(y22Var, null);
        }
        Context context = ((do6) this.d).a;
        q84 q84VarA = mw.a(context, context);
        defpackage.j22 j22Var = new defpackage.j22(this, 3);
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(rm9.b(), defpackage.sh2.c).plus(new u40(u96.i(new j90(q84VarA), new f90(s22.a.b, j22Var)))));
        this.u = kz1VarA;
        return kz1VarA;
    }

    public final void k() {
        getClass().toString();
        this.o.b(this);
    }

    public m4 l() {
        eu3 eu3Var = this.i;
        ArrayList arrayListH0 = defpackage.qn1.h0(u96.j(eu3Var.b.d.a == null ? o8.m : null), eu3Var.a());
        String str = eu3Var.b.a.b;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(arrayListH0, 10));
        Iterator it = arrayListH0.iterator();
        while (it.hasNext()) {
            arrayList.add(((m4) it.next()).c);
        }
        t4.a(str, arrayList);
        return (m4) defpackage.qn1.V(arrayListH0);
    }

    public void c() {
        b();
        getClass().toString();
    }

    public synchronized void b(n8 n8Var) {
        try {
            Objects.toString(this.r);
            if (this.r != w5.LOADING) {
                if (a(n8Var)) {
                    this.b.a();
                    this.b.b(s5.AD_LOADING);
                    this.m.b(dr3.LOAD, this);
                    c(n8Var);
                } else {
                    e();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void b(m4 m4Var) {
        String str;
        jn3.c(m4Var.c, new Object[0]);
        a(w5.ERRONEOUSLY_LOADED);
        f75 f75Var = f75.ERROR;
        x54 x54Var = this.c.k;
        if (x54Var == null || (str = x54Var.b) == null) {
            str = c75.a;
        }
        this.b.a(s5.ADAPTER_LOADING, new gb(f75Var, str), null);
        this.b.a(s5.AD_LOADING);
        this.m.a(dr3.LOAD, this);
        defpackage.y22 y22Var = this.u;
        if (y22Var != null) {
            defpackage.z22.b(y22Var, null);
        }
        this.u = null;
        a(m4Var);
    }

    public static final j59 a(pp ppVar, Throwable th) {
        defpackage.y22 y22Var = ppVar.e;
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.av0.c(y22Var, defpackage.uy4.a.k0(), null, new op(ppVar, null), 2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(dt dtVar, defpackage.f02 f02Var) {
        kp kpVar;
        t5 t5Var;
        s5 s5Var;
        if (f02Var instanceof kp) {
            kpVar = (kp) f02Var;
            int i = kpVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                kpVar.f = i - Integer.MIN_VALUE;
            } else {
                kpVar = new kp(this, f02Var);
            }
        } else {
            kpVar = new kp(this, f02Var);
        }
        Object obj = kpVar.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = kpVar.f;
        if (i2 == 0) {
            r57.b(obj);
            t5 t5Var2 = this.b;
            s5 s5Var2 = s5.BIDDING_DATA_LOADING;
            t5Var2.a(s5Var2, null);
            np npVar = new np(this, dtVar, null);
            kpVar.b = t5Var2;
            kpVar.c = s5Var2;
            kpVar.f = 1;
            if (defpackage.z22.c(npVar, kpVar) == a32Var) {
                return a32Var;
            }
            t5Var = t5Var2;
            s5Var = s5Var2;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            s5Var = kpVar.c;
            t5Var = kpVar.b;
            r57.b(obj);
        }
        j59 j59Var = j59.a;
        t5Var.a(s5Var);
        return j59Var;
    }

    public static final cp a(pp ppVar, String str, String str2, ds dsVar) {
        return ppVar.q.a(str, str2, dsVar);
    }

    public final synchronized void a(w5 w5Var) {
        Objects.toString(w5Var);
        this.r = w5Var;
    }

    @Override // yads.nz
    public final synchronized boolean a() {
        return this.s;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0042  */
    public synchronized boolean a(n8 n8Var) {
        boolean z;
        try {
            d9 d9Var = this.w;
            if (this.r == w5.ERRONEOUSLY_LOADED || d9Var == null || this.t <= 0 || SystemClock.elapsedRealtime() - this.t > d9Var.J || (n8Var != null && !n8Var.equals(this.c.e))) {
                z = true;
            } else if (w60.b(this.a).b != this.c.n) {
                z = true;
            } else {
                z = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    @Override // yads.tu4
    public void a(ou4 ou4Var) {
        Objects.toString(ou4Var);
    }

    public synchronized void a(m4 m4Var) {
        wn wnVar = this.v;
        if (wnVar != null) {
            wnVar.a(m4Var);
        }
    }
}
