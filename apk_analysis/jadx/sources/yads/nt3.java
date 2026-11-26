package yads;

import android.widget.ProgressBar;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class nt3 implements m15 {
    public static final /* synthetic */ defpackage.ze4[] c = {mo.a(nt3.class, TJAdUnitConstants.String.PROGRESS_BAR, "getProgressBar()Landroid/widget/ProgressBar;", 0)};
    public final mt3 a = new mt3();
    public final e55 b = new e55(null);

    @Override // yads.m15
    public final void a() {
        e55 e55Var = this.b;
        defpackage.ze4 ze4Var = c[0];
        ProgressBar progressBar = (ProgressBar) e55Var.a.get();
        if (progressBar != null) {
            long max = progressBar.getMax();
            ze.a(progressBar, max, max);
        }
    }

    @Override // yads.m15
    public final void a(long j, long j2) {
        e55 e55Var = this.b;
        defpackage.ze4 ze4Var = c[0];
        ProgressBar progressBar = (ProgressBar) e55Var.a.get();
        if (progressBar != null) {
            ze.a(progressBar, j, j2);
        }
    }
}
