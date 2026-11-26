package yads;

import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class ie6 implements nb6 {
    public final nf6 a;
    public final ze b;
    public final n90 c;

    public ie6(nf6 nf6Var) {
        ze zeVar = new ze();
        n90 n90Var = new n90();
        this.a = nf6Var;
        this.b = zeVar;
        this.c = n90Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        am4 am4Var = (am4) this.a.b();
        if (am4Var != null) {
            wz3 wz3Var = am4Var.c.b;
            ProgressBar videoProgress = wz3Var != null ? wz3Var.getVideoProgress() : null;
            if (videoProgress != null) {
                this.b.getClass();
                ze.a(videoProgress, j, j2);
            }
            wz3 wz3Var2 = am4Var.c.b;
            TextView countDownProgress = wz3Var2 != null ? wz3Var2.getCountDownProgress() : null;
            if (countDownProgress != null) {
                h15 h15Var = this.c.a;
                countDownProgress.setText(h15.a(j - j2));
            }
        }
    }
}
