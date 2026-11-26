package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class bc3 implements uk3 {
    public final Set<Activity> a = Collections.newSetFromMap(new WeakHashMap());
    public volatile boolean b;

    public class a implements ViewTreeObserver.OnDrawListener {
        public final /* synthetic */ View b;

        /* JADX INFO: renamed from: bc3$a$a, reason: collision with other inner class name */
        public class RunnableC0120a implements Runnable {
            public final /* synthetic */ a b;

            public RunnableC0120a(a aVar) {
                this.b = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                su3 su3VarA = su3.a();
                su3VarA.getClass();
                eb9.a();
                su3VarA.d.set(true);
                bc3.this.b = true;
                View view = a.this.b;
                view.getViewTreeObserver().removeOnDrawListener(this.b);
                bc3.this.a.clear();
            }
        }

        public a(View view) {
            this.b = view;
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public final void onDraw() {
            eb9.f().post(new RunnableC0120a(this));
        }
    }

    @Override // defpackage.uk3
    public final void a(Activity activity) {
        if (!this.b && this.a.add(activity)) {
            View decorView = activity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new a(decorView));
        }
    }
}
