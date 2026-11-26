package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.firebase.perf.transport.TransportManager;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.TraceMetric;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fd6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ fd6(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                View view = (View) obj3;
                xe9 xe9Var = (xe9) obj2;
                od6 od6Var = (od6) obj;
                if (tl.b(view) && view.isAttachedToWindow()) {
                    try {
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (viewTreeObserver != null) {
                            viewTreeObserver.removeOnDrawListener(xe9Var.a);
                        }
                    } catch (Throwable th) {
                        sg.f("Removing the viewTreeObserver failed: ", th, '.', od6Var.c.v);
                        return;
                    }
                    break;
                }
                break;
            default:
                ((TransportManager) obj3).lambda$log$2((TraceMetric) obj2, (ApplicationProcessState) obj);
                break;
        }
    }
}
