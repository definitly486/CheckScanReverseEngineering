package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class rq implements Runnable {
    public final /* synthetic */ View b;
    public final /* synthetic */ View c;
    public final /* synthetic */ bd2 d;
    public final /* synthetic */ fs2 e;

    public rq(View view, View view2, bd2 bd2Var, fs2 fs2Var) {
        this.b = view;
        this.c = view2;
        this.d = bd2Var;
        this.e = fs2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view = this.c;
        view.setPivotX(tq.a(view, view.getWidth(), this.d.a, this.e));
        View view2 = this.c;
        view2.setPivotY(tq.a(view2, view2.getHeight(), this.d.b, this.e));
    }
}
