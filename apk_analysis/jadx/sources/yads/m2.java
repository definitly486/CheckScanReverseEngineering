package yads;

import android.app.Activity;
import android.content.Context;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class m2 implements n2, c60 {
    public final Activity a;
    public final RelativeLayout b;
    public final Window c;
    public final pg4 d;
    public final d9 e;
    public final x2 f;
    public final e4 g;
    public final fe5 h;
    public final m03 i;
    public final r03 j;
    public final c13 k;

    public m2(Activity activity, RelativeLayout relativeLayout, Window window, pg4 pg4Var, d9 d9Var, x2 x2Var, i2 i2Var, e4 e4Var, bf5 bf5Var, int i, fe5 fe5Var) {
        ArrayList arrayList;
        fo1 fo1Var;
        c13 i13Var;
        Object objPrevious;
        String str;
        m03 m03Var = new m03(activity);
        r03 r03Var = new r03(e4Var.a);
        this.a = activity;
        this.b = relativeLayout;
        this.c = window;
        this.d = pg4Var;
        this.e = d9Var;
        this.f = x2Var;
        this.g = e4Var;
        this.h = fe5Var;
        this.i = m03Var;
        this.j = r03Var;
        j13 j13Var = new j13(activity, d9Var, relativeLayout, this, i2Var, i, x2Var, e4Var, bf5Var);
        Context context = ((do6) j13Var.c).a;
        oa5 oa5Var = new oa5(activity, new ao1(pg4Var, this, mw.a(context, context)), this);
        c4 c4Var = j13Var.f;
        d9 d9Var2 = j13Var.a;
        c4Var.getClass();
        a3 p95Var = d9Var2.a == n70.REWARDED ? new p95(c4Var.a, oa5Var) : new ep3();
        List listF = pg4Var.f();
        if (listF != null) {
            arrayList = new ArrayList();
            for (Object obj : listF) {
                String str2 = ((fo1) obj).a;
                un0[] un0VarArr = un0.b;
                if (defpackage.aa4.e(str2, "ad")) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        List listF2 = pg4Var.f();
        if (listF2 != null) {
            ListIterator listIterator = listF2.listIterator(listF2.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                } else {
                    objPrevious = listIterator.previous();
                    str = ((fo1) objPrevious).a;
                    un0[] un0VarArr2 = un0.b;
                }
            } while (!defpackage.aa4.e(str, "pack_shot"));
            fo1Var = (fo1) objPrevious;
        } else {
            fo1Var = null;
        }
        vg4 vg4VarB = pg4Var.b();
        n6 n6Var = vg4VarB != null ? vg4VarB.j : null;
        String str3 = j13Var.a.p;
        rn0[] rn0VarArr = rn0.b;
        if (defpackage.aa4.e(str3, "ad_pod") && n6Var != null) {
            if ((pg4Var instanceof ni4) || fo1Var != null) {
                i13Var = new r6(activity, pg4Var, j13Var.d, oa5Var, arrayList, fo1Var, j13Var.b, p95Var, this, j13Var.e, n6Var);
            }
            this.k = i13Var;
        }
        i13Var = new i13(j13Var.e.a(activity, j13Var.b, pg4Var, j13Var.d, new u25(p95Var), oa5Var, new bx5(new l15(), new zk5(j13Var.a), new el5(j13Var.a), new dl5()), new fl5(), arrayList != 0 ? (fo1) defpackage.qn1.V(arrayList) : null, null), this);
        this.k = i13Var;
    }

    @Override // yads.n2
    public final void a() {
        this.f.a(2, null);
    }

    @Override // yads.n2
    public final void b() {
        this.f.a(3, null);
    }

    @Override // yads.n2
    public final void c() {
        if (this.g.a != n70.APPOPENAD) {
            this.b.setBackground(b9.a);
        }
        this.k.c();
        this.f.a(0, null);
        this.f.a(5, null);
    }

    @Override // yads.n2
    public final boolean d() {
        zg5 zg5Var;
        m03 m03Var = this.i;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            m03Var.getClass();
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(m03Var.a);
        return fe5VarA != null && fe5VarA.s;
    }

    @Override // yads.c60
    public final void e() {
        this.f.a.finish();
    }

    @Override // yads.n2
    public final void f() {
        fe5 fe5Var;
        this.f.a(this.a.getResources().getConfiguration().orientation == 1 ? 7 : 6);
        this.c.requestFeature(1);
        this.c.addFlags(1024);
        this.c.addFlags(16777216);
        this.j.a(this.c, this.b);
        if (this.e.F || ((fe5Var = this.h) != null && fe5Var.I0)) {
            r03 r03Var = this.j;
            Window window = this.c;
            r03Var.getClass();
            WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
            insetsController.setSystemBarsBehavior(2);
            insetsController.hide(WindowInsetsCompat.Type.navigationBars());
        }
    }

    @Override // yads.n2
    public final void g() {
        this.k.invalidate();
    }

    @Override // yads.n2
    public final void onAdClosed() {
        this.d.destroy();
        this.f.a(4, null);
    }
}
