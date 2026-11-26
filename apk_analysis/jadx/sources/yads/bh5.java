package yads;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class bh5 implements y06 {
    public final hc4 a;
    public final j65 b;
    public final rf3 c;
    public final uu4 d;

    public bh5(hc4 hc4Var, j65 j65Var, rf3 rf3Var, uu4 uu4Var) {
        this.a = hc4Var;
        this.b = j65Var;
        this.c = rf3Var;
        this.d = uu4Var;
    }

    @Override // yads.y06
    public final void a(Context context, fj4 fj4Var, dh4 dh4Var) {
        boolean z;
        j65 j65Var = this.b;
        boolean zBooleanValue = true;
        if (!j65Var.f) {
            j65Var.f = true;
            e65 e65Var = j65Var.e;
            defpackage.mb4 mb4Var = e65Var.e;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            e65Var.e = defpackage.av0.c(e65Var.c, null, null, new d65(e65Var, null), 3);
        }
        this.a.a();
        this.d.a(fj4Var);
        if (dh4Var != null) {
            rf3 rf3Var = this.c;
            rh6 rh6Var = rf3Var.c;
            fe5 fe5VarA = rh6Var.a.a(context);
            Boolean bool = fe5VarA != null ? fe5VarA.R : null;
            zg5 zg5Var = rh6Var.a;
            synchronized (zg5.k) {
                z = zg5Var.e;
            }
            boolean zD = rh6Var.a.d();
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else if ((!z || !za.a(context)) && !zD) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                defpackage.mb4 mb4Var2 = rf3Var.e;
                if (mb4Var2 != null) {
                    mb4Var2.cancel(null);
                }
                rf3Var.e = defpackage.av0.c(rf3Var.b, null, null, new qf3(dh4Var, rf3Var, null), 3);
            }
        }
    }

    @Override // yads.y06
    public final void a(fj4 fj4Var) {
        j65 j65Var = this.b;
        j65Var.f = false;
        e65 e65Var = j65Var.e;
        defpackage.mb4 mb4Var = e65Var.e;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        e65Var.e = null;
        this.a.b();
        this.d.b(fj4Var);
        rf3 rf3Var = this.c;
        defpackage.mb4 mb4Var2 = rf3Var.e;
        if (mb4Var2 != null) {
            mb4Var2.cancel(null);
        }
        rf3Var.e = null;
    }

    @Override // yads.y06
    public final void a(d9 d9Var, ArrayList arrayList) {
        this.a.a(d9Var, arrayList);
    }

    @Override // yads.y06
    public final void a(dh4 dh4Var) {
        rf3 rf3Var = this.c;
        defpackage.mb4 mb4Var = rf3Var.e;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        rf3Var.e = null;
        View viewA = dh4Var.d.a();
        if (viewA instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) viewA;
            eg3 eg3Var = rf3Var.a.a;
            WeakReference weakReference = (WeakReference) eg3Var.d.get(frameLayout);
            yu yuVar = weakReference != null ? (yu) weakReference.get() : null;
            if (yuVar != null) {
                eg3Var.d.remove(frameLayout);
                frameLayout.removeView(yuVar);
            }
            WeakReference weakReference2 = (WeakReference) eg3Var.e.get(frameLayout);
            jg3 jg3Var = weakReference2 != null ? (jg3) weakReference2.get() : null;
            if (jg3Var != null) {
                eg3Var.e.remove(frameLayout);
                frameLayout.removeView(jg3Var);
            }
        }
    }

    @Override // yads.y06
    public final void a(we3 we3Var) {
        this.a.m = we3Var;
    }

    @Override // yads.y06
    public final void a(yj4 yj4Var) {
        this.b.d.e.g = yj4Var;
    }
}
