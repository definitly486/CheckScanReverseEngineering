package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import yads.br0;
import yads.fs2;
import yads.vq0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nd6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ nd6(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        ViewTreeObserver viewTreeObserver;
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                od6 od6Var = (od6) obj3;
                ta6 ta6Var = od6Var.c;
                Window window = (Window) obj2;
                View view = (View) obj;
                view.getClass();
                try {
                    az4 az4Var = od6Var.d;
                    qb6 qb6Var = ta6Var.I;
                    ta6Var.N.getClass();
                    int i2 = 1;
                    x16 x16Var = new x16(i2, od6Var, view);
                    zt0 zt0Var = new zt0(od6Var, view, window, i2);
                    qb6Var.getClass();
                    pn5 pn5Var = new pn5(view, az4Var, qb6Var, x16Var, zt0Var);
                    if (tl.b(view) && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                        viewTreeObserver.addOnDrawListener(pn5Var);
                    }
                    od6Var.e.put(view, new xe9(pn5Var));
                    break;
                } catch (Throwable th) {
                    sg.f("Session Replay onDecorViewReady failed: ", th, '.', ta6Var.v);
                }
                return j59.a;
            default:
                return Boolean.valueOf(vq0.a((fr) obj3, (fs2) obj2, (br0) obj));
        }
    }
}
