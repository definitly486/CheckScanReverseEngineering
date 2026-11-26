package yads;

import android.view.WindowManager;

/* JADX INFO: loaded from: classes6.dex */
public final class md6 implements ld6 {
    public final WindowManager a;

    public md6(WindowManager windowManager) {
        this.a = windowManager;
    }

    @Override // yads.ld6
    public final void a(kd6 kd6Var) {
        ((defpackage.fg2) kd6Var).a(this.a.getDefaultDisplay());
    }

    @Override // yads.ld6
    public final void a() {
    }
}
