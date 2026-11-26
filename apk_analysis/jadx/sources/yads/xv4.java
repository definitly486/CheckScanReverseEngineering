package yads;

import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class xv4 implements bb6 {
    public bb6 a;
    public final /* synthetic */ yv4 b;

    public xv4(yv4 yv4Var) {
        this.b = yv4Var;
    }

    @Override // yads.bb6
    public final void a() {
        bb6 bb6Var = this.a;
        if (bb6Var != null) {
            bb6Var.a();
        }
    }

    @Override // yads.bb6
    public final void b() {
        am4 am4Var = (am4) this.b.a.b();
        if (am4Var != null) {
            sk4 sk4Var = am4Var.c;
            cm4 cm4Var = this.b.c;
            wz3 wz3Var = sk4Var.b;
            if (wz3Var != null) {
                CheckBox muteControl = wz3Var.getMuteControl();
                if (muteControl != null) {
                    muteControl.setOnClickListener(null);
                    muteControl.setVisibility(8);
                }
                ProgressBar videoProgress = wz3Var.getVideoProgress();
                if (videoProgress != null) {
                    videoProgress.setProgress(0);
                    videoProgress.setVisibility(8);
                }
                TextView countDownProgress = wz3Var.getCountDownProgress();
                if (countDownProgress != null) {
                    countDownProgress.setText("");
                    countDownProgress.setVisibility(8);
                }
            }
        }
        bb6 bb6Var = this.a;
        if (bb6Var != null) {
            bb6Var.b();
        }
    }

    @Override // yads.bb6
    public final void c() {
        am4 am4Var = (am4) this.b.a.b();
        if (am4Var != null) {
            this.b.d.a(am4Var);
        }
        bb6 bb6Var = this.a;
        if (bb6Var != null) {
            bb6Var.c();
        }
    }
}
