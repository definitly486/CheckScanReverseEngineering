package yads;

import android.widget.ProgressBar;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class d15 implements tx5 {
    public final long a;
    public final WeakReference b;

    public d15(ProgressBar progressBar, k10 k10Var, long j) {
        this.a = j;
        this.b = new WeakReference(progressBar);
    }

    @Override // yads.tx5
    public final void a(long j, long j2) {
        ProgressBar progressBar = (ProgressBar) this.b.get();
        if (progressBar != null) {
            long j3 = this.a;
            ze.a(progressBar, j3, j3 - j);
        }
    }
}
