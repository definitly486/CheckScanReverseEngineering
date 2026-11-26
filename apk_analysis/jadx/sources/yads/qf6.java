package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class qf6 {
    public final of6 a;

    public qf6(of6 of6Var) {
        this.a = of6Var;
    }

    public final boolean a() {
        View viewB = this.a.b();
        return (viewB == null || eh6.b(viewB) || eh6.a(viewB) < 50) ? false : true;
    }
}
