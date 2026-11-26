package defpackage;

import android.app.AlertDialog;
import androidx.work.WorkRequest;
import com.tapjoy.TJPlacement;
import com.tapjoy.Tapjoy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class s59 implements q59 {
    public final sk8 a;
    public final hd3<Boolean> b;
    public final cy8 c;
    public final l69 d;
    public final kz1 e;
    public c f;
    public nk2 g;
    public b h;
    public final ArrayList i;
    public final a69 j;

    public interface a {

        /* JADX INFO: renamed from: s59$a$a, reason: collision with other inner class name */
        public static final class C0328a implements a {
            public final j69 a;

            public C0328a(j69 j69Var) {
                j69Var.getClass();
                this.a = j69Var;
            }
        }

        public static final class b implements a {
            public final nu5 a;

            public b(nu5 nu5Var) {
                nu5Var.getClass();
                this.a = nu5Var;
            }
        }
    }

    public static final class b {
        public final nu5 a;
        public final c31 b;

        public b(nu5 nu5Var, c31 c31Var) {
            this.a = nu5Var;
            this.b = c31Var;
        }
    }

    public interface c {

        public static final class a implements c {
            public static final a a = new a();
        }

        public static final class b implements c {
            public static final b a = new b();
        }

        /* JADX INFO: renamed from: s59$c$c, reason: collision with other inner class name */
        public static final class C0329c implements c {
            public final nu5 a;
            public final yp1 b;
            public boolean c;
            public s68 d;
            public s68 e;
            public s68 f;
            public boolean g;
            public boolean h;

            public C0329c(nu5 nu5Var) {
                nu5Var.getClass();
                this.a = nu5Var;
                this.b = new yp1();
                this.g = true;
            }
        }
    }

    @bd2(c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$onMain$1", f = "UnityOfferwallController.kt", l = {}, m = "invokeSuspend")
    public static final class d extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        public final /* synthetic */ ll3<j59> l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ll3<j59> ll3Var, e02<? super d> e02Var) {
            super(2, e02Var);
            this.l = ll3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new d(this.l, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((d) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            this.l.invoke();
            return j59.a;
        }
    }

    public s59(sk8 sk8Var, hd3 hd3Var, cy8 cy8Var, l69 l69Var) {
        this.a = sk8Var;
        this.b = hd3Var;
        this.c = cy8Var;
        this.d = l69Var;
        jd8 jd8VarB = rm9.b();
        oi2 oi2Var = qo2.a;
        this.e = z22.a(o22.a.C0306a.d(jd8VarB, uy4.a));
        this.f = c.a.a;
        this.i = new ArrayList();
        this.j = new a69(this);
    }

    @Override // defpackage.q59
    public final Object a(String str, String str2, tj1.c cVar, tj1 tj1Var) {
        oi2 oi2Var = qo2.a;
        return av0.d(uy4.a.k0(), new d69(this, str, str2, cVar, null), tj1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, f02 f02Var) {
        t59 t59Var;
        if (f02Var instanceof t59) {
            t59Var = (t59) f02Var;
            int i = t59Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                t59Var.n = i - Integer.MIN_VALUE;
            } else {
                t59Var = new t59(this, f02Var);
            }
        } else {
            t59Var = new t59(this, f02Var);
        }
        Object objC = t59Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = t59Var.n;
        if (i2 == 0) {
            r57.b(objC);
            v59 v59Var = new v59(this, str, null);
            t59Var.n = 1;
            objC = yv8.c(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, v59Var, t59Var);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        Boolean bool = (Boolean) objC;
        return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
    }

    public final void c(nu5 nu5Var, a aVar) {
        b bVar = this.h;
        if (bVar != null) {
            if (bVar.a != nu5Var) {
                bVar = null;
            }
            if (bVar == null) {
                return;
            }
            this.h = null;
            c31 c31Var = bVar.b;
            if (c31Var.t() instanceof no5) {
                c31Var.resumeWith(aVar);
            }
        }
    }

    public final void d(c.C0329c c0329c) {
        if (this.f != c0329c) {
            return;
        }
        s68 s68Var = c0329c.f;
        if (s68Var != null) {
            s68Var.cancel(null);
        }
        s68 s68Var2 = c0329c.e;
        if (s68Var2 != null) {
            s68Var2.cancel(null);
        }
        if (c0329c.h) {
            c0329c.h = false;
            cy8 cy8Var = this.c;
            cy8Var.b = null;
            AlertDialog alertDialog = cy8Var.c;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            cy8Var.c = null;
            cy8Var.d = null;
        }
        this.f = c.a.a;
        this.d.a(i69.CLOSED);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0063  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:54:0x0109  */
    /* JADX WARN: Code duplicated, block: B:58:0x011c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, sk8$a] */
    public final Object e(String str, String str2, f02 f02Var) throws Throwable {
        y59 y59Var;
        String str3;
        c31 c31Var;
        r07 r07Var;
        TJPlacement placement;
        Object objS;
        ?? aVar;
        if (f02Var instanceof y59) {
            y59Var = (y59) f02Var;
            int i = y59Var.p;
            if ((i & Integer.MIN_VALUE) != 0) {
                y59Var.p = i - Integer.MIN_VALUE;
            } else {
                y59Var = new y59(this, f02Var);
            }
        } else {
            y59Var = new y59(this, f02Var);
        }
        Object objU = y59Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = y59Var.p;
        sk8.a aVar2 = 0;
        if (i2 == 0) {
            r57.b(objU);
            y59Var.l = str;
            y59Var.m = str2;
            y59Var.p = 1;
            if (Tapjoy.isConnected()) {
                objU = Boolean.TRUE;
            } else {
                nk2 nk2VarA = this.g;
                if (nk2VarA == null) {
                    nk2VarA = av0.a(this.e, null, null, new x59(this, str, null), 3);
                    this.g = nk2VarA;
                } else {
                    if (!nk2VarA.isActive()) {
                        nk2VarA = null;
                    }
                    if (nk2VarA == null) {
                        nk2VarA = av0.a(this.e, null, null, new x59(this, str, null), 3);
                        this.g = nk2VarA;
                    }
                }
                objU = nk2VarA.u(y59Var);
            }
            if (objU != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            str2 = y59Var.m;
            str = y59Var.l;
            r57.b(objU);
        } else {
            if (i2 != 2) {
                if (i2 == 3) {
                    r57.b(objU);
                    return objU;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str3 = y59Var.l;
            r57.b(objU);
        }
        if (!((Boolean) objU).booleanValue()) {
            return new a.C0328a(j69.USER_ID_FAILED);
        }
        str2 = str3;
        y59Var.l = null;
        y59Var.m = null;
        y59Var.p = 3;
        c31Var = new c31(1, zya.b(y59Var));
        c31Var.u();
        str2.getClass();
        r07Var = new r07();
        placement = Tapjoy.getPlacement(str2, new uk8(this.j, r07Var));
        if (placement != null) {
            aVar = new sk8.a(placement);
            r07Var.b = aVar;
        }
        if (aVar2 == 0) {
            aVar2 = aVar;
            c31Var.resumeWith(new a.C0328a(j69.REQUEST_FAILED));
        } else {
            aVar2 = aVar;
            this.h = new b(aVar2, c31Var);
            aVar2.a.requestContent();
        }
        objS = c31Var.s();
        if (objS == a32Var) {
            return a32Var;
        }
        return objS;
        if (!((Boolean) objU).booleanValue()) {
            return new a.C0328a(j69.CONNECT_FAILED);
        }
        if (aa4.e(Tapjoy.getUserID(), str)) {
            y59Var.l = null;
            y59Var.m = null;
            y59Var.p = 3;
            c31Var = new c31(1, zya.b(y59Var));
            c31Var.u();
            str2.getClass();
            r07Var = new r07();
            placement = Tapjoy.getPlacement(str2, new uk8(this.j, r07Var));
            if (placement != null) {
                aVar = new sk8.a(placement);
                r07Var.b = aVar;
            }
            if (aVar2 == 0) {
                aVar2 = aVar;
                c31Var.resumeWith(new a.C0328a(j69.REQUEST_FAILED));
            } else {
                aVar2 = aVar;
                this.h = new b(aVar2, c31Var);
                aVar2.a.requestContent();
            }
            objS = c31Var.s();
            if (objS == a32Var) {
                return objS;
            }
        } else {
            y59Var.l = str2;
            y59Var.m = null;
            y59Var.p = 2;
            c31 c31Var2 = new c31(1, zya.b(y59Var));
            c31Var2.u();
            gj4 gj4Var = new gj4(1, this, c31Var2);
            str.getClass();
            Tapjoy.setUserID(str, new vk8(gj4Var));
            objU = c31Var2.s();
            if (objU != a32Var) {
                str3 = str2;
                if (!((Boolean) objU).booleanValue()) {
                    return new a.C0328a(j69.USER_ID_FAILED);
                }
                str2 = str3;
                y59Var.l = null;
                y59Var.m = null;
                y59Var.p = 3;
                c31Var = new c31(1, zya.b(y59Var));
                c31Var.u();
                str2.getClass();
                r07Var = new r07();
                placement = Tapjoy.getPlacement(str2, new uk8(this.j, r07Var));
                if (placement != null) {
                    aVar = new sk8.a(placement);
                    r07Var.b = aVar;
                }
                if (aVar2 == 0) {
                    aVar2 = aVar;
                    c31Var.resumeWith(new a.C0328a(j69.REQUEST_FAILED));
                } else {
                    aVar2 = aVar;
                    this.h = new b(aVar2, c31Var);
                    aVar2.a.requestContent();
                }
                objS = c31Var.s();
                if (objS == a32Var) {
                    return objS;
                }
            }
        }
        return a32Var;
    }

    public final void f(ll3<j59> ll3Var) {
        av0.c(this.e, null, null, new d(ll3Var, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009c A[PHI: r10
      0x009c: PHI (r10v6 s59$a) = (r10v4 s59$a), (r10v4 s59$a), (r10v13 s59$a) binds: [B:45:0x008f, B:47:0x0099, B:18:0x003c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:60:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, String str2, tj1.c cVar, f02 f02Var) throws Throwable {
        g69 g69Var;
        nl3 nl3Var;
        a c0328a;
        Object objU;
        if (f02Var instanceof g69) {
            g69Var = (g69) f02Var;
            int i = g69Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                g69Var.o = i - Integer.MIN_VALUE;
            } else {
                g69Var = new g69(this, f02Var);
            }
        } else {
            g69Var = new g69(this, f02Var);
        }
        Object objC = g69Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = g69Var.o;
        c.a aVar = c.a.a;
        c.b bVar = c.b.a;
        try {
            if (i2 == 0) {
                r57.b(objC);
                c cVar2 = this.f;
                if (!cVar2.equals(bVar)) {
                    if (cVar2 instanceof c.C0329c) {
                        c.C0329c c0329c = (c.C0329c) cVar2;
                        if (c0329c.c) {
                            d(c0329c);
                        }
                    } else {
                        cVar2.equals(aVar);
                    }
                    this.f = bVar;
                    h69 h69Var = new h69(this, str, str2, null);
                    g69Var.l = cVar;
                    g69Var.o = 1;
                    objC = yv8.c(8000L, h69Var, g69Var);
                    nl3Var = cVar;
                    if (objC == a32Var) {
                    }
                    return a32Var;
                }
                return m69.a.a;
            }
            if (i2 == 1) {
                nl3 nl3Var2 = (nl3) g69Var.l;
                r57.b(objC);
                nl3Var = nl3Var2;
            } else {
                if (i2 != 2) {
                    if (i2 == 3) {
                        r57.b(objC);
                        return objC;
                    }
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                c0328a = (a) g69Var.l;
                r57.b(objC);
            }
            this.h = null;
            if (this.f.equals(bVar)) {
                this.f = aVar;
            }
            if (!(c0328a instanceof a.b)) {
                if (c0328a instanceof a.C0328a) {
                    return new m69.b(((a.C0328a) c0328a).a);
                }
                me0.e();
                return null;
            }
            nu5 nu5Var = ((a.b) c0328a).a;
            g69Var.l = null;
            g69Var.o = 3;
            c.C0329c c0329c2 = new c.C0329c(nu5Var);
            this.f = c0329c2;
            c0329c2.d = av0.c(this.e, null, null, new b69(this, nu5Var, c0329c2, null), 3);
            nu5Var.a();
            objU = c0329c2.b.u(g69Var);
            if (objU == a32Var) {
                return a32Var;
            }
            return objU;
            a aVar2 = (a) objC;
            c0328a = aVar2 == null ? new a.C0328a(j69.TIMEOUT) : aVar2;
            if (c0328a instanceof a.b) {
                g69Var.l = c0328a;
                g69Var.o = 2;
                if (nl3Var.invoke(g69Var) != a32Var) {
                    this.h = null;
                    if (this.f.equals(bVar)) {
                        this.f = aVar;
                    }
                    if (!(c0328a instanceof a.b)) {
                        if (c0328a instanceof a.C0328a) {
                            return new m69.b(((a.C0328a) c0328a).a);
                        }
                        me0.e();
                        return null;
                    }
                    nu5 nu5Var2 = ((a.b) c0328a).a;
                    g69Var.l = null;
                    g69Var.o = 3;
                    c.C0329c c0329c3 = new c.C0329c(nu5Var2);
                    this.f = c0329c3;
                    c0329c3.d = av0.c(this.e, null, null, new b69(this, nu5Var2, c0329c3, null), 3);
                    nu5Var2.a();
                    objU = c0329c3.b.u(g69Var);
                    if (objU == a32Var) {
                        return objU;
                    }
                }
            } else {
                this.h = null;
                if (this.f.equals(bVar)) {
                    this.f = aVar;
                }
                if (!(c0328a instanceof a.b)) {
                    if (c0328a instanceof a.C0328a) {
                        return new m69.b(((a.C0328a) c0328a).a);
                    }
                    me0.e();
                    return null;
                }
                nu5 nu5Var3 = ((a.b) c0328a).a;
                g69Var.l = null;
                g69Var.o = 3;
                c.C0329c c0329c4 = new c.C0329c(nu5Var3);
                this.f = c0329c4;
                c0329c4.d = av0.c(this.e, null, null, new b69(this, nu5Var3, c0329c4, null), 3);
                nu5Var3.a();
                objU = c0329c4.b.u(g69Var);
                if (objU == a32Var) {
                    return objU;
                }
            }
            return a32Var;
        } catch (Throwable th) {
            this.h = null;
            if (this.f.equals(bVar)) {
                this.f = aVar;
            }
            throw th;
        }
    }
}
