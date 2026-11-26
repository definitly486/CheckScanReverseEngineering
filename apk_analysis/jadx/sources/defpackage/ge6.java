package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class ge6 implements ac6 {
    public static volatile boolean e;
    public final ta6 b;
    public final ee6 c = new iy8() { // from class: ee6
        @Override // defpackage.iy8
        public final eo2 a(MotionEvent motionEvent, ji9.d dVar) {
            try {
                yd6.b();
            } catch (Throwable th) {
                sg.f("PostHogTouchActivityIntegration touchSession failed: ", th, '.', this.a.b.v);
            }
            return (eo2) dVar.invoke(motionEvent);
        }
    };
    public final fe6 d = new hw5() { // from class: fe6
        @Override // defpackage.hw5
        public final void a(View view, boolean z) {
            ge6 ge6Var = this.a;
            ee6 ee6Var = ge6Var.c;
            try {
                Window windowA = ti9.a(view);
                if (windowA == null) {
                    return;
                }
                if (!z) {
                    cl4 cl4Var = ji9.e;
                    ((CopyOnWriteArrayList) ji9.c.a(windowA).a).remove(ee6Var);
                } else {
                    cl4 cl4Var2 = ji9.e;
                    if (((CopyOnWriteArrayList) ji9.c.a(windowA).a).contains(ee6Var)) {
                        return;
                    }
                    ((CopyOnWriteArrayList) ji9.c.a(windowA).a).add(ee6Var);
                }
            } catch (Throwable th) {
                sg.f("PostHogTouchActivityIntegration root view changed failed: ", th, '.', ge6Var.b.v);
            }
        }
    };

    /* JADX WARN: Type inference failed for: r1v1, types: [ee6] */
    /* JADX WARN: Type inference failed for: r1v2, types: [fe6] */
    public ge6(ta6 ta6Var) {
        this.b = ta6Var;
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
    }

    @Override // defpackage.ac6
    public final void b(bc6 bc6Var) {
        if (e) {
            return;
        }
        e = true;
        try {
            Iterator it = qn1.t0(((y77) w62.a.getValue()).b).iterator();
            while (it.hasNext()) {
                Window windowA = ti9.a((View) it.next());
                if (windowA != null) {
                    cl4 cl4Var = ji9.e;
                    if (!((CopyOnWriteArrayList) ji9.c.a(windowA).a).contains(this.c)) {
                        ((CopyOnWriteArrayList) ji9.c.a(windowA).a).add(this.c);
                    }
                }
            }
            ((y77) w62.a.getValue()).a.add(this.d);
        } catch (Throwable th) {
            sg.f("PostHogTouchActivityIntegration install failed: ", th, '.', this.b.v);
        }
    }
}
