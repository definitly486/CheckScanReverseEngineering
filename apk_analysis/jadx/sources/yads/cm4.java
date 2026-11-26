package yads;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import yads.cm4;

/* JADX INFO: loaded from: classes6.dex */
public final class cm4 {
    public final td6 a;
    public final yk4 b;
    public final double c;

    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    public cm4(gr2 gr2Var, td6 td6Var) {
        double dDoubleValue;
        yk4 yk4Var = new yk4(gr2Var);
        this.a = td6Var;
        this.b = yk4Var;
        Double d = td6Var.d;
        if (d == null) {
            dDoubleValue = 1.0d;
        } else {
            d = d.doubleValue() == 0.0d ? null : d;
            if (d != null) {
                dDoubleValue = d.doubleValue();
            } else {
                dDoubleValue = 1.0d;
            }
        }
        this.c = dDoubleValue;
    }

    public final void a(wz3 wz3Var) {
        if (wz3Var != null) {
            final CheckBox muteControl = wz3Var.getMuteControl();
            if (muteControl != null) {
                muteControl.setOnClickListener(new View.OnClickListener() { // from class: ur9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        cm4.a(this.b, muteControl, view);
                    }
                });
                muteControl.setVisibility(this.a.b ? 0 : 8);
            }
            ProgressBar videoProgress = wz3Var.getVideoProgress();
            if (videoProgress != null) {
                videoProgress.setVisibility(this.a.c ? 8 : 0);
            }
            TextView countDownProgress = wz3Var.getCountDownProgress();
            if (countDownProgress != null) {
                countDownProgress.setText("");
                countDownProgress.setVisibility(0);
            }
        }
    }

    public static final void a(cm4 cm4Var, CheckBox checkBox, View view) {
        cm4Var.b.a.a((float) (!checkBox.isChecked() ? cm4Var.c : 0.0d));
    }
}
