package yads;

import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes6.dex */
public final class ze {
    public static void a(ProgressBar progressBar, long j, long j2) {
        progressBar.clearAnimation();
        if (j > 0) {
            progressBar.setMax((int) j);
            x05 x05Var = new x05(progressBar, progressBar.getProgress(), (int) j2);
            x05Var.setDuration(200L);
            progressBar.startAnimation(x05Var);
        }
    }
}
