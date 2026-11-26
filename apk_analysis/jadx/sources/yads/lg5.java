package yads;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import defpackage.rm9;
import java.util.List;
import yads.lg5;

/* JADX INFO: loaded from: classes6.dex */
public final class lg5 implements go {
    public final yn a;
    public final dp b;
    public final fk4 c;
    public final qo d;
    public final vh4 e;
    public final qd5 f;
    public final di4 g;
    public final defpackage.y22 h;
    public final zg5 i;
    public final ao j;
    public final xf4 k;
    public final c60 l;
    public final wf6 m;
    public final Context n;
    public final ViewTreeObserver.OnPreDrawListener o;
    public d9 p;
    public pg4 q;
    public boolean r;
    public po s;

    public lg5(Context context, yn ynVar, dp dpVar, bf5 bf5Var) {
        fk4 fk4Var = new fk4(context, dpVar.b, dpVar.a, bf5Var);
        qo qoVar = new qo(dpVar.b, dpVar.c);
        e4 e4Var = dpVar.b;
        vh4 vh4Var = new vh4(e4Var);
        qd5 qd5Var = new qd5(e4Var, dpVar.c);
        di4 di4Var = new di4(ynVar);
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        zg5 zg5Var = zg5.l;
        if (zg5Var == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
        }
        this(context, ynVar, dpVar, fk4Var, qoVar, vh4Var, qd5Var, di4Var, y22VarA, zg5Var, new ao(), new xf4(), new defpackage.ud1(ynVar, 3), new wf6());
    }

    @Override // yads.go
    public final void a(Context context, d9 d9Var) {
        this.b.a.a(s5.ADAPTER_LOADING, null);
        fe5 fe5VarA = this.i.a(context);
        if (!(fe5VarA != null ? fe5VarA.E : false)) {
            this.a.b(o8.a);
            return;
        }
        if (this.r) {
            return;
        }
        sl5 sl5Var = this.a.c.d.a;
        wx2 wx2VarC = d9Var.c();
        this.p = d9Var;
        if (sl5Var != null && ul5.a(context, d9Var, wx2VarC, this.j, sl5Var)) {
            this.c.a(d9Var, new ig5(this), new gg5(this, context, d9Var));
            return;
        }
        m4 m4VarA = o8.a(sl5Var != null ? sl5Var.c(context) : 0, sl5Var != null ? sl5Var.a(context) : 0, wx2VarC.c, wx2VarC.d, eh6.d(context), eh6.b(context));
        jn3.a(m4VarA.c, new Object[0]);
        this.a.b(m4VarA);
    }

    @Override // yads.go
    public final List b() {
        xf4 xf4Var = this.k;
        pg4 pg4Var = this.q;
        xf4Var.getClass();
        return xf4.b(pg4Var);
    }

    @Override // yads.go
    public final String c() {
        pg4 pg4Var = this.q;
        if (pg4Var != null) {
            return pg4Var.c();
        }
        return null;
    }

    @Override // yads.go
    public final String getAdInfo() {
        return this.k.c(this.q);
    }

    public lg5(Context context, yn ynVar, dp dpVar, fk4 fk4Var, qo qoVar, vh4 vh4Var, qd5 qd5Var, di4 di4Var, defpackage.y22 y22Var, zg5 zg5Var, ao aoVar, xf4 xf4Var, c60 c60Var, wf6 wf6Var) {
        this.a = ynVar;
        this.b = dpVar;
        this.c = fk4Var;
        this.d = qoVar;
        this.e = vh4Var;
        this.f = qd5Var;
        this.g = di4Var;
        this.h = y22Var;
        this.i = zg5Var;
        this.j = aoVar;
        this.k = xf4Var;
        this.l = c60Var;
        this.m = wf6Var;
        this.n = w60.a(context);
        this.o = new ViewTreeObserver.OnPreDrawListener() { // from class: m1a
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return lg5.a(this.b);
            }
        };
    }

    public static final boolean a(lg5 lg5Var) {
        defpackage.av0.c(lg5Var.h, null, null, new jg5(lg5Var, null), 3);
        return true;
    }

    @Override // yads.go
    public final String a() {
        return this.k.a(this.q);
    }

    @Override // yads.go
    public final void a(Context context) {
        po poVar = this.s;
        if (poVar != null) {
            no noVar = poVar.a.e;
            e55 e55Var = noVar.d;
            defpackage.ze4 ze4Var = no.e[0];
            ViewGroup viewGroup = (ViewGroup) e55Var.a.get();
            if (viewGroup != null) {
                fg6.a(viewGroup);
            }
            on0 on0Var = noVar.c;
            if (on0Var != null) {
                on0Var.c();
            }
        }
        this.c.b.a();
        this.p = null;
        this.q = null;
        this.r = true;
    }

    public static final void a(yn ynVar) {
        ynVar.c();
    }
}
